#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

echo "Starting the setup process..."

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

# Clone the repository
REPO_DIR="macbook_developement_setup"
echo "Cloning the repository..."
if [ -d "$REPO_DIR" ]; then
    echo "Repository already cloned."
else
    git clone https://github.com/stenzr/macbook_developement_setup.git
    cd $REPO_DIR
fi

# Execute the Ansible playbook
echo "Executing the playbook..."
ansible-playbook playbook/macbook-setup.yml -i "localhost" --ask-become-pass

# Change back to the parent directory
cd ..

# Remove the repository directory
echo "Cleaning up..."
rm -rf $REPO_DIR

# Friendly message
cat <<EOL

Setup complete. Repository has been removed.

- Thank you for using this setup script!
- For more information, visit [stenzr.github.io](https://stenzr.github.io).

EOL
