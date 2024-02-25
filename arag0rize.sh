#!/bin/bash
DEBIAN_FRONTEND=noninteractive
apt -y update
apt install -y curl wget git zsh ca-certificates nano
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
for user in /home/*; do
  if [ -d "$user" ]; then
    chown "$user":"$user" "/home/$user/.zshrc"
    git clone https://github.com/zsh-users/zsh-autosuggestions "/home/$user/.oh-my-zsh/custom/plugins/zsh-autosuggestions"; \
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' "/home/$user/.zshrc"
    chsh -s /bin/zsh "$user"
  fi
done
source "$USER/.zshrc" | zsh
