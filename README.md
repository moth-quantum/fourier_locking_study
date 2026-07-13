# Quantum Fourier Locking Study

Benchmarking and analysis of quantum fourier locking techniques with machine learning acceleration.

## License

This work is licensed under the **Creative Commons Attribution 4.0 International License** (CC-BY-4.0).
See [LICENSE](LICENSE) for details.

**For ArXiv/Academic Citation:**
```bibtex
@article{quantum_fourier_locking,
  title={Quantum Fourier Locking Study},
  author={moth-quantum},
  year={2026},
  eprint={XXXX.XXXXX},
  archivePrefix={arXiv},
  primaryClass={quant-ph}
}
```

## Installation

### Option 1: Local Setup
```bash
pip install -r requirements.txt
jupyter lab
```

### Option 2: Docker (Recommended)
```bash
docker compose up -d
# Access at http://localhost:8888
```

## Project Structure

```
.
├── FourierLocking_Experiments.ipynb    # Main experiments
├── FourierLocking_Figures.ipynb        # Figure generation
├── experiment_*_results.json           # Experimental results
├── FIG_*.pdf / FIG_*.png              # Generated figures
├── Dockerfile                          # Container definition
├── docker-compose.yml                  # Compose config
├── requirements.txt                    # Python dependencies
└── .gitignore                          # Git exclusions
```

## Dependencies

- **Python 3.11+**
- **PyTorch** (CPU or GPU)
- **PennyLane** (quantum computing framework)
- **NumPy, SciPy, Pandas** (scientific computing)
- **Matplotlib, Seaborn** (visualization)
- **Statsmodels** (statistical analysis)

## Quick Start

```bash
# Local
python -m jupyter lab

# Docker
docker compose up
```

## Data Files

- `experiment_a_results.json` - Experiment A results
- `experiment_b_results_clean.json` - Experiment B (cleaned)
- `experiment_f_bulletproof.json` - Experiment F (bulletproof variant)

## Contributing

This is a research repository. For issues or improvements, open an issue or submit a pull request.

## Security

See [SECURITY.md](SECURITY.md) for security considerations.

---

**License**: CC-BY-4.0 | **Attribution**: Required | **Commercial Use**: Allowed
