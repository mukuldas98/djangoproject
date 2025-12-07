#!/bin/bash

echo "📦 Setting up Python environment..."

# Create virtual environment if not exists
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo " Virtual environment created."
else
    echo "ℹVirtual environment already exists."
fi

# Activate environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install requirements
if [ -f "requirements.txt" ]; then
    echo " Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
else
    echo "equirements.txt not found!"
    exit 1
fi

# Run app
echo "🚀 Starting Flask app..."
python3 app.py
