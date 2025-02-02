#!/bin/bash

# Step 1: Create a virtual environment
echo "Creating a virtual environment..."
cd || exit 1
python3 -m venv venv
source venv/bin/activate
echo "Virtual environment activated."

# Step 2: Install pipx
echo "Installing pipx using package manager..."
if ! command -v apt-get &>/dev/null && ! command -v yum &>/dev/null && ! command -v dnf &>/dev/null; then
    echo "No supported package manager found. Please install pipx manually."
    deactivate
    exit 1
fi

if command -v apt-get &>/dev/null; then
    sudo apt-get update
    sudo apt-get install -y pipx
elif command -v yum &>/dev/null; then
    sudo yum install -y pipx
elif command -v dnf &>/dev/null; then
    sudo dnf install -y pipx
fi

if [ $? -ne 0 ]; then
    echo "Failed to install pipx."
    deactivate
    exit 1
fi
echo "pipx installed successfully."

# Step 3: Prompt for libraries to install
read -p "Enter the libraries you want to install (separated by spaces): " libraries
for lib in $libraries; do
    echo "Installing $lib..."
    pip install "$lib" && pipx install "$lib" || {
        echo "Failed to install $lib."
        deactivate
        exit 1
    }
    echo "$lib installed successfully."
done

# Step 4: Ask if the user wants to deactivate the virtual environment
read -p "Do you want to deactivate the virtual environment? (y/n): " choice
if [[ $choice == "y" || $choice == "Y" ]]; then
    deactivate
    echo "Virtual environment deactivated."
else
    echo "You can now continue working in the virtual environment. Type 'deactivate' when you're done."
    $SHELL
fi
