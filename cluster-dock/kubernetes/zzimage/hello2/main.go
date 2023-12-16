package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/info", InfoHandler)
	http.HandleFunc("/health", HealthHandler)
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Println("zz hello v2服务启动失败：", err)
	}
}

// InfoHandler
// 假设是业务接口
func InfoHandler(w http.ResponseWriter, r *http.Request) {
	data := map[string]any{
		"msg": "hello v2 版本 info接口",
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
		"msg": "I am Health. v2",
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
