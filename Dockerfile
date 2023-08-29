FROM ubuntu:latest

# 更新软件包列表，并安装 Python 3.9 和 pip
RUN apt-get update && apt-get install -y python3.9 python3-pip

# 使用 pip 安装 pandora-chatgpt[cloud]
RUN pip3 install pandora-chatgpt[cloud]

# 将主要的Python脚本复制到容器中
COPY main.py /app/main.py

# 设置工作目录
WORKDIR /app

# 在容器启动时运行 main.py 脚本
CMD ["python3", "-u", "main.py"]
