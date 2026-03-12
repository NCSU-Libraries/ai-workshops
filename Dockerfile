# Quarto + Python base
FROM ghcr.io/quarto-dev/quarto:1.5.57

# Add Python + Jupyter support
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /project

COPY requirements.txt requirements.txt
RUN python3 -m venv .venv \
    && . .venv/bin/activate \
    && pip install --upgrade pip \
    && pip install -r requirements.txt || true

COPY . .

EXPOSE 4000

CMD ["bash", "-lc", "cd config && quarto preview slides/index.qmd --host 0.0.0.0 --port 4000 --no-browser"]
