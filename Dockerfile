FROM ubuntu:latest

# 更新软件包列表，并安装 Python 3.8 和 pip
RUN apt-get update && apt-get install -y python3.8 python3-pip

# 使用 pip 安装 pandora-chatgpt[cloud]
RUN pip3 install pandora-chatgpt[cloud]

# 将 pandora-cloud 可执行文件复制到容器的 /usr/local/bin 目录下
COPY pandora-cloud /usr/local/bin/pandora-cloud

CMD ["pandora-cloud"]
