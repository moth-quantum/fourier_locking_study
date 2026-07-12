FROM python:3.11-slim

WORKDIR /workspace

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    pennylane \
    numpy \
    matplotlib \
    scipy \
    pandas && \
    pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
