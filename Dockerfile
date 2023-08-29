FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./

RUN apt-get update && sudo apt install python3.8 && \
    pip install pandora-chatgpt[cloud] && \
    pandora-cloud
