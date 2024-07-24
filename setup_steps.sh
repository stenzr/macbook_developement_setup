#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Install Homebrew if not already installed
if ! command_exists brew; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Install Ansible if not already installed
if ! command_exists ansible; then
    echo "Ansible not found. Installing Ansible..."
    brew install ansible
else
    echo "Ansible is already installed."
fi

# Execute the Ansible playbook
echo "Executing the Ansible playbook..."
ansible-playbook playbook/macbook-setup.yml -i "localhost" --ask-become-pass
