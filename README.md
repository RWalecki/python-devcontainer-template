# Python Development Container

A Docker-based development environment for Python projects, featuring a streamlined setup with essential data science and development tools.

## Features

- Python 3.11.12 development environment
- Pre-installed data science packages (numpy, pandas)
- Development tools (ipdb for debugging)
- Git support
- Optimized Docker build process

## Prerequisites

- Docker installed on your system
- Git (optional, for version control)

## Quick Start

1. Build the Docker image:
   ```bash
   docker build -t python-dev-env .
   ```

2. Run the application:
   ```bash
   docker run -it --rm python-dev-env python scripts/run_app.py
   ```

## Project Structure

```
.
├── src/           # Source code directory
├── scripts/       # Executable scripts
├── tests/         # Test files
├── requirements.txt  # Python dependencies
└── Dockerfile     # Docker configuration
```