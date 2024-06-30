# MacBook Development Setup

This Ansible playbook automates the setup of a new MacBook for development by installing essential tools and applications using Homebrew and Homebrew Cask.

## Prerequisites

1. **Install Ansible**:
   Ensure you have Ansible installed on your MacBook. If not, you can install it using Homebrew:
   ```sh
   brew install ansible

2. **Local Setup**:
    Clone the repository

    ```sh
    git clone git@github.com:stenzr/macbook_developement_setup.git
    cd mac_developement_setup


3. **Execute the playbook**:
    ```sh
    ansible-playbook playbook/macbook-setup.yml -i "localhost" --ask-become-pass

## Customization:
We can customize the list of packages and applications in the loop sections of the playbook to suit our specific development needs. For example, add or remove packages from the Homebrew packages or Cask applications list as required.

## Troubleshooting
**Homebrew Permission Issues:** Ensure Homebrew commands are run as a regular user, not as root.

**Ansible Errors:** Check the error messages for clues. Ensure Ansible is properly installed and configured.

**Network Issues:** Ensure you have a stable internet connection as the playbook downloads packages from the internet.


## Contributing
Contributions are welcome! If you have suggestions for improvements or find bugs, please open an issue or submit a pull request.

**Fork the Repository**
Create a Feature Branch
    ```sh
    git checkout -b feature-branch`

**Commit Your Changes**
    ```sh
    git commit -m "Describe your changes"


**Push to the Branch**

    ```sh
    git push origin feature-branch


**Open a Pull Request**


**License**
This project is licensed under the MIT License. See the LICENSE file for more details.