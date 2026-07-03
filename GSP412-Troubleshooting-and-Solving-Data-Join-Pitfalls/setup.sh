#!/bin/bash

# 1. Define Variables
PROJECT_NAME="madhan-tech-lab"
LOG_FILE="setup.log"

# 2. Add Colors for Professional Output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 3. Define Functions
log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 4. Check Prerequisites (e.g., is gcloud installed?)
if ! command -v gcloud &> /dev/null; then
    log_error "Google Cloud CLI is not installed."
    exit 1
fi

# 5. Core Logic (e.g., Creating folders, setting configs)
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit
log_success "Environment directory created."

# 6. Final Instructions
echo "Setup complete! Navigate to $PROJECT_NAME to start."
