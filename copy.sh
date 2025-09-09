$INITSRC="./src"

cat $INITSRC/.zshrc > ~/.zshrc

cat $INITSRC/.p10k.zsh > ~/.p10k.zsh

cat $INITSRC/.bashrc > ~/.bashrc

cat $INITSRC/.vimrc > ~/.vimrc

mv $INITSRC/Pictures ~/Pictures -r

cat $INITSRC/hello.sh ~/hello.sh
