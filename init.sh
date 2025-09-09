$INITSRC="./src"

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/debian/ $(lsb_release -cs) main'
sudo apt update

sudo apt install curl git zsh snapd wine zip golang-1.24 vim cowsay fortune neowofetch

sudo systemctl enable snapd
sudo systemctl start snapd

sudo snap install docker lm-studio code

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/zsh-autocomplete

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22

node -v # Should print "v22.19.0".

npm -v # Should print "10.9.3".

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 26.ea.14-open

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat $INITSRC/.zshrc > ~/.zshrc

cat $INITSRC/.p10k.zsh > ~/.p10k.zsh

cat $INITSRC/.bashrc > ~/.bashrc

cat $INITSRC/.vimrc > ~/.vimrc

cat $INITSRC/.hello.sh > ~/.hello.sh

mv ./Pictures ~/Pictures -r
