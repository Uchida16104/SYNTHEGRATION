#!/bin/bash

# Step 1: Create a virtual environment
echo "Creating a virtual environment..."
cd || exit 1
python3 -m venv venv
source venv/bin/activate
echo "Virtual environment activated."

# Step 2: Install pipx
echo "Installing pipx using Homebrew..."
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Please install Homebrew first."
    deactivate
    exit 1
fi
brew install pipx || {
    echo "Failed to install pipx."
    deactivate
    exit 1
}
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
