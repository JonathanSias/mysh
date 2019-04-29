#!/usr/bin/env bash
# Caso o bash esteja instalado em um diretorio diferente
#
#
# autor: Jonathan Sias
# descrição: Instalações de softwares
# version: 2.0
# licença: MIT License

function update_upgrade(){
    sudo apt-get update && sudo apt-get dist-upgrade -y
}

# snap is required to install devtools
function package_managers(){
    # Snap
    sudo apt install snapd
    # npm
    sudo apt-get update
    sudo apt install nodejs npm
    sudo apt install npm
    # Bower
    # Brew
}

function install_devtools(){
    # Atom
    sudo snap install atom
    sudo snap refresh atom
    # Sublime
    sudo snap install sublime-text
    sudo snap refresh sublime-text
    # Visual Code
    sudo snap install vscode --classic
    sudo snap refresh vscode
    # Oni
    # WebStorm
    sudo snap install webstorm
    sudo snap refresh webstorm
    # IntelliJ
    sudo snap install intellij-idea-ultimate --classic
    #sudo snap install intellij-idea-community --classic
    sudo snap refresh intellij-idea-ultimate
    #sudo snap refresh intellij-idea-community
    # GitKraken
    sudo snap install gitkraken
    sudo snap refresh gitkraken
}

function install_browsers(){
    # Chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
    sudo dpkg -i chrome.deb
    sudo apt-get install -f
    # Chromium
    sudo snap install chromium
    sudo snap refresh chromium
    # Firefox
    sudo snap install firefox
    sudo snap refresh firefox
    #wget "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=pt-BR" -O firefox.tar.bz2
    #sudo tar -jxvf  firefox.tar.bz2 -C /opt/
    #sudo mv /opt/firefox*/ /opt/firefox
    #sudo ln -sf /opt/firefox/firefox /usr/bin/firefox
    #echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox/firefox\n Icon=/opt/firefox/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox.desktop
    #sudo chmod +x /usr/share/applications/firefox.desktop
    #cp /usr/share/applications/firefox.desktop  ~/Área\ de\ Trabalho/
    # Tor
    sudo snap install tor
    sudo snap refresh tor
}

function others(){
    # Kdenlive
    sudo add-apt-repository ppa:kdenlive/kdenlive-stable
    sudo apt-get update
    sudo apt-get install kdenlive
}

function uninstall_others(){
    # Kdenlive
    sudo add-apt-repository ppa:kdenlive/kdenlive-stable -r -y
    sudo apt-get remove kdenlive --auto-remove
}

function unistall_browsers(){
    # Chrome
    sudo apt-get remove google-chrome* --auto-remove
    # Chromium
    sudo snap remove chromium
    # Firefox
    sudo snap remove firefox
    #sudo rm -Rf /opt/firefox*
    #sudo rm -Rf /usr/bin/firefox
    #sudo rm -Rf /usr/share/applications/firefox.desktop
    # Tor
    sudo snap remove tor
}

function unistall_devtools(){
    # Atom
    sudo snap remove atom
    # Sublime
    sudo snap remove sublime-text
    # Visual Code
    sudo snap remove vscode
    # Oni
    # WebStorm
    sudo snap remove webstorm
    # IntelliJ
    sudo snap remove intellij-idea-ultimate
    #sudo snap remove intellij-idea-community
    # GitKraken
    sudo snap remove gitkraken
}

package_managers
update_upgrade