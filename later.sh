#!/bin/bash

# Installing themes of ohmyzsh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/custom/plugins/zsh-syntax-highlighting

# Replace on plugins in .zshrc
cat ~/.zshrc | sed -e s/"plugins=(git)"/"plugins=(git zsh-autosuggestions zsh-syntax-highlighting)"/g > ~/.zshrc-update

# Add alias in .zshrc-update
echo "alias rustscan='sudo docker run --rm --name rustscan rustscan/rustscan:1.10.0'" >> ~/.zshrc-update
echo "alias lynxb='lynx -accept_all_cookies -update_term_title google'" >> ~/.zshrc-update

# message finallity
echo "";
echo "remove .zshrc";
echo "modify on name .zshrc-update of .zshrc";
echo "source .zshrc of update";
