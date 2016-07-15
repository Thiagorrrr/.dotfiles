DOTFILESDIR=$HOME"/.dotfiles"

NOCOLOR=`tput sgr0`
GREEN=`tput setaf 2`
LGREEN=`tput bold; tput setaf 2`
YELLOW=`tput bold; tput setaf 3`
BLUE=`tput bold; tput setaf 4`
MAGENTA=`tput bold; tput setaf 5`

echo ""
echo "${GREEN}Welcome to the installation process :)${NOCOLOR}"

echo ""
echo "${YELLOW}The installer will use this dir: "
cd ~
pwd
echo "${NOCOLOR}"

echo "${MAGENTA}Dotfiles${NOCOLOR}"
echo ""
echo "- ${GREEN}Cloning felipemrodrigues/dotfiles.git...${NOCOLOR}"
if [ ! -d "$DOTFILESDIR" ]; then
    git clone git@github.com:felipemrodrigues/.dotfiles.git "$DOTFILESDIR"
else
    cd "$DOTFILESDIR" && git pull && cd ~
fi

echo ""
echo "- ${GREEN}Making links${NOCOLOR}"
rm -f ~/.gitconfig ~/.bash_profile ~/.alias ~/.bash_git ~/.bash_prompt
ln -s .dotfiles/git/.gitconfig ~/.gitconfig
ln -s .dotfiles/runcom/.bash_profile ~/.bash_profile
ln -s .dotfiles/runcom/.bash_prompt ~/.bash_prompt
ln -s .dotfiles/runcom/.bash_git ~/.bash_git
ln -s .dotfiles/.alias ~/.alias
echo ""