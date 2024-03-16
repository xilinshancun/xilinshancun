# Dockerfile

# 使用官方 Python 运行时作为父镜像
FROM python:3.9-slim

# 设置工作目录为 /app
WORKDIR /app

# 将当前目录内容复制到位于 /app 中的容器中
COPY . /app

# 安装 requirements.txt 中指定的所有依赖
RUN pip install --no-cache-dir -r requirements.txt

# 使端口 5000 可用于外界
EXPOSE 5000

# 定义环境变量
ENV NAME World

# 运行 app.py 时，应用程序将启动
CMD ["python", "app.py"]
