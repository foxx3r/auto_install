#!/bin/bash
wget https://raw.githubusercontent.com/foxx3r/my_zsh_config/master/.zshrc -O $HOME/.zshrc 
sh -c "$(wget -O- https://raw.githubusercontent.com/foxx3r/my_zsh_config/master/install.sh)"
