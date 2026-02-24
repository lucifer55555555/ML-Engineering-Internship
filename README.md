# MLOps Technical Assessment - Batch Processing Job

A minimal MLOps-style batch job that processes OHLCV data to generate trading signals with full observability and reproducibility.

## Features
- Deterministic runs via config + seed
- Comprehensive logging and metrics
- Dockerized deployment
- Robust error handling
- Machine-readable JSON output

## Prerequisites
- Python 3.9+ (for local runs)
- Docker (for containerized runs)

## Local Setup & Execution

### 1. Create virtual environment (recommended)
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
