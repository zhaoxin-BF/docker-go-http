# 使用官方的 Golang 镜像作为基础镜像
FROM golang:1.21

# 设置工作目录
WORKDIR /app

# 将本地的 go.mod 和 go.sum 文件复制到容器中
COPY go.mod go.sum ./

# 下载并安装依赖
RUN go mod download

# 将当前目录的所有文件复制到容器中
COPY . .

# 构建应用程序
RUN go build -o myapp

# 设置容器启动时要执行的命令
CMD ["./myapp"]