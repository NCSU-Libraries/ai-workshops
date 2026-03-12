<div align="center">

<h2>Run Locally (AI Workshops)</h2>

</div>

## Micromamba environment (recommended)

1. Create and activate the environment:
```bash
micromamba create -y -f config/environment.yml
micromamba activate ai-workshops
```

2. Launch Jupyter and run the notebooks:
```bash
jupyter notebook
# or
jupyter lab
```

3. Execute a notebook headlessly (optional):
```bash
python -m nbconvert --to notebook --execute workshops/colab-and-chill/colab-and-chill.ipynb --output executed_colab_and_chill.ipynb
```

## Python .venv alternative

1. Create and activate a virtual environment in this folder:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run notebooks:
```bash
jupyter notebook
```

## Notes

- Python 3.10-3.12 is supported.
- If you add packages, update both `config/environment.yml` and `requirements.txt`.
- The first workshop is intentionally lightweight so it can run cleanly in Colab or locally.
