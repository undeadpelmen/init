wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/debian/ $(lsb_release -cs) main'
sudo apt update

sudo apt install curl git zsh snapd wine zip golang-1.24

sudo systemctl enable snapd
sudo systemctl start snapd

sudo snap install docker lm-studio code

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cat ./.zshrc > ~/.zshrc

cat ./.p10k.zsh > ~/.p10k.zsh

cat ./bashrc > ~/.bashrc

mv ./Pictures ~/Pictures -r

mv ./hello.sh ~/hello.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22

node -v # Should print "v22.19.0".

npm -v # Should print "10.9.3".

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 26.ea.14-open

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
