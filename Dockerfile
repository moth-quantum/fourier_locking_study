FROM python:3.11-slim@sha256:a3ab0b966bc4e91546a033e22093cb840908979487a9fc0e6e38295747e49ac0

WORKDIR /workspace

# Create non-root user
RUN useradd -m -u 1000 jupyter && \
    apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    pennylane \
    scikit-learn \
    numpy \
    matplotlib \
    scipy \
    statsmodels \
    ipykernel && \
    pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu

# Set ownership
RUN chown -R jupyter:jupyter /workspace

# Switch to non-root user
USER jupyter

EXPOSE 8888

HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD curl -f http://localhost:8888/lab || exit 1

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
