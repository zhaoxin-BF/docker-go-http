package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	// 创建 Gin 的默认引擎
	r := gin.Default()

	// 定义路由，处理 "/hello" 请求
	r.GET("/hello", func(c *gin.Context) {
		c.String(200, "hello")
	})

	// 启动 Gin 服务器，监听在 127.0.0.1:80
	r.Run(":80")
}
