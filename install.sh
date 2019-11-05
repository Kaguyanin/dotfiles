## INSTALAÇÕES ##

# Atualiza sistema
sudo pacman -Syu --noconfirm

# Fontes
sudo pacman -S adobe-source-han-sans-otc-fonts dina-font gsfonts otf-latinmodern-math terminus-font ttf-dejavu ttf-liberation xorg-fonts-75dpi xorg-fonts-alias xorg-fonts-cyrillic xorg-fonts-encodings xorg-fonts-misc xorg-fonts-type1 xorg-font-util ttf-font-awesome ttf-fira-code noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk texlive-fontsextra --noconfirm
yay -S ttf-oxygen ttf-ms-fonts siji-git ttf-symbola freetype2-infinality --noconfirm
git clone https://github.com/powerline/fonts.git ~/powerlinefont ; ~/powerlinefont/install.sh ; rm -rf ~/powerlinefont/ 
git clone https://github.com/terroo/fonts.git ~/fonts ; cp ~/fonts/fonts/*.otf $HOME/.local/share/fonts/ ; cp ~/fonts/fonts/*.ttf $HOME/.local/share/fonts/ ; rm -rf ~/fonts
fc-cache -fv

# Instala aplicações e denpendencias disponiveis no repositório da comunidade
sudo pacman -S git yay i3-gaps i3blocks i3-help i3-scripts i3-scrot i3lock-color i3status-manjaro manjaro-i3-settings code zsh --noconfirm
yay -S polybar

## CONFIGURAÇÕES ##

# Configurações do i3
cp -r ~/dotfiles/i3/* ~/.config/i3/

# Configurações do Polybar
mkdir -p ~/.config/polybar ; ins2tall -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config ; echo "polybar -r kobra &" > ~/.xinitrc ; rm ~/.config/polybar/config ; cp ~/dotfiles/polybar/config ~/.config/polybar/config ; polybar -r kobra

# Configurações do zsh

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
rm ~/zshrc
cp ~/dotfiles/.zshrc ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"