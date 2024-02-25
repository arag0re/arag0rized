#!/bin/bash
DEBIAN_FRONTEND=noninteractive
apt -y update
apt install -y curl wget git zsh ca-certificates nano
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/oh-my-zsh/custom/plugins/zsh-autosuggestions
for user in /home/*; do
  if [ -d "$user" ]; then
    cp /usr/share/oh-my-zsh/templates/zshrc.zsh-template "$user/.zshrc"
    chown "$user":"$user" "$user/.zshrc"
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' "$user/.zshrc"
    chsh -s /bin/zsh "$user"
  fi
done
