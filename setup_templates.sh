#!/bin/bash

# Setup script for AI-Driven SDD Orchestrator

REPO_URL="https://github.com/boraeresici/AI-Driven-SDD-Orchestrator"
TEMPLATES_DIR="templates"
SDD_ARTIFACTS_DIR="sdd-artifacts"

# Create necessary directories
mkdir -p $TEMPLATES_DIR $SDD_ARTIFACTS_DIR

# Download template files
template_files=("feasibility.md" "research.md" "data-model.md" "architecture-design.md" "plan.md" "tasks.md" "open-questions.md")

for file in "${template_files[@]}"; do
    curl -o "$TEMPLATES_DIR/$file" "$REPO_URL/raw/main/templates/$file"
    if [ $? -ne 0 ]; then
        echo "Failed to download $file"
        exit 1
    fi
    # Create corresponding file in sdd-artifacts directory
    touch "$SDD_ARTIFACTS_DIR/$file"
done

# Download flows.md
curl -o "flows.md" "$REPO_URL/raw/main/flows.md"
if [ $? -ne 0 ]; then
    echo "Failed to download flows.md"
    exit 1
fi

echo "Setup completed successfully. Templates and sdd-artifacts structure are ready to use."