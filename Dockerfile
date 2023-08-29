RUN apt-get update && sudo apt install python3.8 && \
    pip install pandora-chatgpt[cloud] && \
    pandora-cloud
