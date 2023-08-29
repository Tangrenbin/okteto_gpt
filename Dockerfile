FROM ubuntu:latest

# 更新软件包列表，并安装 Python 3.8 和 pip
RUN apt-get update && apt-get install -y python3.8 python3-pip

# 使用 pip 安装 pandora-chatgpt[cloud]
RUN pip3 install pandora-chatgpt[cloud]

CMD ["pandora-cloud"]
