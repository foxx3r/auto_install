#!/usr/bin/bash
echo "Selecione seu sistema..."
echo "1 - Debian"
echo "2 - Alpine"
echo "3 - Arch"
echo "4 - Fedora"
read -p "-> " choose

if [[ $choose == "1" ]]
then
    apt install sudo
    apt install evince vlc
    apt install clisp sbcl
    apt install swi-prolog clang zsh git elixir neovim nodejs -y
    git config --global user.email "coluna123@protonmail.ch"
    git config --global user.name "foxx3r"
    npm i -g yarn
    pip install httpie
    sh -c "$(wget -O- https://raw.githubusercontent.com/foxx3r/amazing-vimrc/master/install.sh)"
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sed -i "s/robbyrussell/clean/g" $HOME/.zshrc
    read -p "você quer instalar o ambiente haskell?\n1 - sim\n2 - não\n-> " haskell_environment
    if [[ $haskell_environment == "1" ]]
    then
        apt install haskell-platform
    fi
    read -p "você quer instalar o ambiente rust?\n1 - sim\n2 - não\n-> " rust_environment
    if [[ $rust_environment == "1" ]]
    then
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    fi
    read -p "você quer instalar o ambiente LISP + emacs?\n1 - sim\n2 - não\n-> " emacs_environment
    if [[ $emacs_environment == "1" ]]
    then
        apt install emacs -y
        echo "(require 'package)\n(add-to-list 'package-archives '(\"melpa\" . \"http://melpa.milkbox.net/packages/\"))\n(package-initialize)" >> $HOME/.emacs
    fi
    cd $HOME
    mkdir programacao math livros musicas filmes
    cd programacao
    mkdir javascript/projetos javascript/git javascript/learn haskell/projetos haskell/git haskell/learn rust/projetos rust/git rust/learn shellprojetos shell/git shell/learn html/projetos html/git html/learn css/projetos css/git css/learn python/projetos python/git python/learn lisp/projetos lisp/git lisp/learn fsharp/projetos fsharp/git fsharp/learn prolog/projetos prolog/git prolog/learn java/projetos java/git java/learn c/projetos c/git c/learn cpp/projetos cpp/git cpp/learn v/projetos v/git v/learn vimscript/projetos vimscript/git vimscript/learn sql/projetos sql/git sql/learn -p
    git clone https://github.com/foxx3r/amazing-vimrc vimscript/git
    git clone https://github.com/foxx3r/ap_haskell haskell/git
    git clone https://github.com/foxx3r/josephus_problem_haskell haskell/git
    git clone https://github.com/foxx3r/binary_search_haskell haskell/git
    git clone https://github.com/foxx3r/parser_dict_haskell haskell/git
    git clone https://github.com/foxx3r/nucleotide_counter haskell/git
    git clone https://github.com/foxx3r/game_random_haskell haskell/git
    git clone https://github.com/foxx3r/quicksort_haskell haskell/git
    git clone https://github.com/foxx3r/graphs_in_haskell haskell/git
    git clone https://github.com/foxx3r/queues_in_haskell haskell/git
    git clone https://github.com/foxx3r/binary_tree_haskell haskell/git
    git clone https://github.com/foxx3r/stack-haskell haskell/git
    git clone https://github.com/foxx3r/PSND_project javascript/git
    git clone https://github.com/foxx3r/nodejs-tutorial javascript/git
    git clone https://github.com/foxx3r/faker-api javascript/git
    git clone https://github.com/foxx3r/api_with_sequelize javascript/git
    git clone https://github.com/foxx3r/learn_cpp cpp/git
    git clone https://github.com/foxx3r/learn_v v/git
    git clone https://github.com/foxx3r/learn_rust rust/git
    git clone https://github.com/foxx3r/calculator_in_rust rust/git
    git clone https://github.com/foxx3r/translator-py python/git
    git clone https://github.com/foxx3r/learn-db python/git
    git clone https://github.com/foxx3r/apt_fox shell/git
    git clone https://github.com/foxx3r/comparador-de-hashs shell/git
    git clone https://github.com/foxx3r/monitor-do-sistema shell/git
    git clone https://github.com/foxx3r/whereisfox shell/git
    git clone https://github.com/foxx3r/auto_install shell/git
    read -p "você gostaria de instalar o ambiente desktop?\n1 - sim\n2 - não\n-> " desktop_environment
    if [[ $desktop_environment == "1" ]]
    then
        apt install chromium evince qterminal
        wget https://updates.tdesktop.com/tlinux32/tsetup32.2.0.1.tar.xz
    fi
fi
