package main

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/spf13/viper"
)

type Config struct {
	Name    string
	Version string
	Port    int
}

var (
	cfgFile = "config.yaml"
	config  Config
)

func main() {
	viper.SetConfigFile(cfgFile)
	if err := viper.ReadInConfig(); err != nil {
		log.Fatal("读取配置文件失败:", err)
	}

	err := viper.Unmarshal(&config)
	if err != nil {
		log.Fatalf("解析失败配置文件, %v", err)
	}

	http.HandleFunc("/info", InfoHandler)
	http.HandleFunc("/health", HealthHandler)

	addr := fmt.Sprintf(":%d", config.Port)
	server := &http.Server{Addr: addr, Handler: nil}
	go func() {
		err := server.ListenAndServe()
		// 通过Shutdown 或者 Close 主动调用抛出
		if errors.Is(err, http.ErrServerClosed) {
			log.Printf("%s %s, cause:[%v]\n", getServiceMsg(), "http server has been close", err)
		} else {
			log.Fatalf("%s %s, cause:[%v]", getServiceMsg(), "服务启动失败", err)
		}
	}()

	log.Printf("%s listen: %s\n", getServiceMsg(), addr)
	quit := make(chan os.Signal)
	signal.Notify(quit, syscall.SIGTERM, syscall.SIGINT)
	<-quit
	log.Println("Shutdown Server...")

	//创建超时上下文，Shutdown可以让未处理的连接在这个时间内关闭
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := server.Shutdown(ctx); err != nil {
		log.Fatal("Server Shutdown:", err)
	}

	log.Println("Server exiting...")
}

// InfoHandler
// 假设是业务接口
func InfoHandler(w http.ResponseWriter, r *http.Request) {
	data := map[string]any{
		"msg": fmt.Sprintf("%s %s", getServiceMsg(), "info接口"),
	}

	jsonData, err := json.Marshal(data)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	_, err = w.Write(jsonData)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}

func HealthHandler(w http.ResponseWriter, r *http.Request) {
	data := map[string]any{
		"msg": fmt.Sprintf("%s %s", getServiceMsg(), "I am Health. v1"),
	}

	jsonData, err := json.Marshal(data)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	_, err = w.Write(jsonData)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}

func getServiceMsg() string {
	return fmt.Sprintf("%s %s", config.Name, config.Version)
}
