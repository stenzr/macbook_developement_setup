# MacBook Development Setup

This Ansible playbook automates the setup of a new MacBook for development by installing essential tools and applications using Homebrew and Homebrew Cask.

## Usage
execute the command

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/stenzr/macbook_developement_setup/main/setup_steps.sh)"

You will be prompted to Enter the BECOME password. 
Enter the password of your laptop

## Dev Tools configured to be Installed
    - git
    - node
    - python
    - docker
    - wget
    - nvm

## Softwares configured to be Installed
    - visual-studio-code
    - google-chrome
    - vlc
    - protonvpn
    - brave-browser
    - postman

## Customization:
We can customize the list of packages and applications in the loop sections of the playbook to suit our specific development needs. For example, add or remove packages from the Homebrew packages or Cask applications list as required.

## Troubleshooting
**Homebrew Permission Issues:** Ensure Homebrew commands are run as a regular user, not as root.

**Ansible Errors:** Check the error messages for clues. Ensure Ansible is properly installed and configured.

**Network Issues:** Ensure you have a stable internet connection as the playbook downloads packages from the internet.


## Contributing
Contributions are welcome! If you have suggestions for improvements or find bugs, please open an issue or submit a pull request.

**Fork the Repository**:
Create a Feature Branch

    git checkout -b feature-branch

**Commit Your Changes**:

    git commit -m "Describe your changes"


**Push to the Branch**:

    git push origin feature-branch


**Open a Pull Request**


**License**
This project is licensed under the MIT License. See the LICENSE file for more details.