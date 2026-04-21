#!/bin/bash
set -euo pipefail

# Install all hard and soft dependencies for the pillar R package
# This ensures all packages needed for development and testing are available

Rscript -e 'pak::pak()'
