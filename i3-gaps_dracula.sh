## INSTALAÇÕES ##

# Atualiza sistema
sudo pacman -Syu

# Fontes
sudo pacman -S adobe-source-han-sans-otc-fonts dina-font gsfonts otf-latinmodern-math terminus-font ttf-dejavu ttf-liberation xorg-fonts-75dpi xorg-fonts-alias xorg-fonts-cyrillic xorg-fonts-encodings xorg-fonts-misc xorg-fonts-type1 xorg-font-util ttf-font-awesome ttf-fira-code noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk texlive-fontsextra freetype2-infinality ttf-symbola --noconfirm
yay -S ttf-oxygen ttf-ms-fonts siji-git ttf-symbola freetype2-infinality
git clone https://github.com/powerline/fonts.git ~/powerlinefont ; ~/powerlinefont/install.sh ; rm -rf ~/powerlinefont/ 
git clone https://github.com/terroo/fonts.git ~/fonts ; cp ~/fonts/fonts/*.otf $HOME/.local/share/fonts/ ; cp ~/fonts/fonts/*.ttf $HOME/.local/share/fonts/ ; rm -rf ~/fonts
fc-cache -fv

# Instala aplicações e denpendencias disponiveis no repositório da comunidade
sudo pacman -S git yay i3-gaps i3blocks i3-help i3-scripts i3-scrot i3lock-color i3status-manjaro manjaro-i3-settings --noconfirm
yay -S polybar

# Baixa meus dotfiles via GIT
git clone https://github.com/Kaguyanin/dotfiles.git ~/dotfiles

## CONFIGURAÇÕES ##

# Configurações do i3
cp -r ~/dotfiles/* ~/.config/i3/

# Configurações do Polybar
mkdir -p ~/.config/polybar ; ins2tall -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config ; echo "polybar -r kobra &" > ~/.xinitrc ; rm ~/.config/polybar/config ; cp ~/dotfiles/mybar ~/.config/polybar/config ; polybar -r kobra