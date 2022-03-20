#!/usr/bin/env bash

# Text Color Variables
GREEN='\033[32m'  # Green
YELLOW='\033[33m' # YELLOW
CLEAR='\033[0m'   # Clear color and formatting

# Setup script for setting up a new macos machine
echo -e "${GREEN}Starting Install !${CLEAR}"

install-dev-tools() {

    ## Homebrew
    echo -e "${YELLOW}Install Homebrew${CLEAR}"
    CI=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    brew update

    ## NVM
    echo -e "${YELLOW}Install NVM${CLEAR}"
    brew install nvm

    ## git
    echo -e "${YELLOW}Install GIT${CLEAR}"
    brew install git
    git config --global user.email "coribn50111@gmail.com"
    git config --global user.name "corbin419"
    
    ## Visual Studio Code
    echo -e "${YELLOW}Install Visual Studio Code${CLEAR}"
    brew install visual-studio-code

    ## ngrok
    echo -e "${YELLOW}Install ngrok${CLEAR}"
    brew install ngrok
}

install-basic-tools() {
    ## Google Chrome
    echo -e "${YELLOW}Install Google Chrome${CLEAR}"
    brew install google-chrome

    ## Google Drive
    echo -e "${YELLOW}Install Google Drive${CLEAR}"
    brew install google-drive

    ## 1Password
    echo -e "${YELLOW}Install 1Password${CLEAR}"
    brew install 1password 1password-cli
}

install-all() {
    echo -e "${GREEN}Starting Install dev-tools !${CLEAR}"
    install-dev-tools

    echo -e "${GREEN}Starting Install basic-tools !${CLEAR}"
    install-basic-tools
}

install-all
