package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"time"
)

var startAt = time.Now()

func main() {
	http.HandleFunc("/info", InfoHandler)
	http.HandleFunc("/health", HealthHandler)
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Println("zz hello v3服务启动失败：", err)
	}
}

// InfoHandler
// 假设是业务接口
func InfoHandler(w http.ResponseWriter, r *http.Request) {
	data := map[string]any{
		"msg": "hello v3 版本 info接口",
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
	data := map[string]any{}
	w.Header().Set("Content-Type", "application/json")

	// 假设启动服务需要15s，15s之后返回200说明服务正常启动
	duration := time.Since(startAt)
	if duration.Seconds() < 15 {
		w.WriteHeader(500)
		data["msg"] = "应用未就绪"
	} else {
		w.WriteHeader(200)
		data["msg"] = "应用已就绪"
	}

	jsonData, err := json.Marshal(data)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	_, err = w.Write(jsonData)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
