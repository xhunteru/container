# 基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制代码到容器
COPY app /app

# 安装依赖
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 暴露端口
EXPOSE 8080

# 启动应用
CMD ["python", "app.py"]
