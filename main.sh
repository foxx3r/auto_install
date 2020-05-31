#!/usr/bin/bash
echo "Selecione seu sistema..."
echo "1 - Debian"
echo "2 - Alpine"
echo "3 - Arch"
echo "4 - Fedora"
echo "5 - Termux"
read -p "-> " choose

if [[ $choose == "1" ]]
then
    apt update
    apt upgrade -y
    apt install sudo -y
    echo -e "você deseja criar/configurar seu usuário?\n1 - sim\n2 - não"
    read -p "-> " user_config
    if [[ $user_config == "1" ]]
    then
        adduser foxxer
        echo "foxxer    ALL=(ALL:ALL) ALL" >> /etc/sudoers
    fi
    apt install python3-pip npm clisp sbcl -y
    apt install swi-prolog gnupg xz-utils gforth python bat curl wget ruby clang zsh git elixir neovim nodejs -y
    git config --global user.email "coluna123@protonmail.ch"
    git config --global user.name "foxx3r"
    npm config set strict-ssl false
    npm i -g yarn
    yarn config set strict-ssl false
    pip install httpie
    sh -c "$(wget -O- https://raw.githubusercontent.com/foxx3r/amazing-vimrc/master/install.sh)"
    echo -e "você quer instalar o ambiente haskell?\n1 - sim\n2 - não"
    read -p "-> " haskell_environment
    if [[ $haskell_environment == "1" ]]
    then
        apt install haskell-platform -y
    fi
    echo -e "você quer instalar o ambiente rust?\n1 - sim\n2 - não"
    read -p "-> " rust_environment
    if [[ $rust_environment == "1" ]]
    then
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    fi
    echo -e "você quer instalar o ambiente spacemacs?\n1 - sim\n2 - não"
    read -p "-> " emacs_environment
    if [[ $emacs_environment == "1" ]]
    then
        if [[ -d "~/.emacs.d" ]]
        then
            rm -rf ~/.emacs.d 
        fi
        if [[ -e "~/.spacemacs" ]]
        then
            rm -rf ~/.spacemacs
        fi
        git clone git@github:foxx3r/awesome_spacemacs ~/.
        rm -rf ~/.git
    fi 
    echo -e "você quer instalar o ambiente F#?\n1 - sim\n2 - não"
    read -p "-> " fsharp_environment
    if [[ $fsharp_environment == "1" ]]
    then
        apt install fsharp -y
        if [[ ! -e "/usr/bin/fsharpi" ]]
        then
            apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
            echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list
            apt update
            apt install mono-complete fsharp -y
        fi
    fi
    echo -e "você gostaria de instalar o ambiente desktop?\n1 - sim\n2 - não"
    read -p "-> " desktop_environment
    if [[ $desktop_environment == "1" ]]
    then
        apt install chromium evince qterminal vlc -y
        apt install alacritty -y
        if [[ `uname -m` == "i386" ]] || [[ `uname -m` == "i686" ]]
        then
            wget https://updates.tdesktop.com/tlinux32/tsetup32.2.1.7.tar.xz
            tar -xvf tsetup32.2.0.1.tar.xz
        else
            wget https://updates.tdesktop.com/tlinux/tsetup.2.1.7.tar.xz
            tar -xvf tsetup2.1.7.tar.xz
        fi
    fi
fi

if [[ $choose == "5" ]]
then
    apt update
    apt upgrade -y
    apt install python3 nodejs bat swi-prolog zsh curl wget ruby zsh git elixir neovim gnupg enacs pforth -y
    echo "deb https://its-pointless.github.io/files termux extras" >> $PREFIX/etc/apt/sources.list
    wget https://its-pointless.github.io/pointless.gpg
    apt-key add pointless.gpg
    rm -rf pointless.gpg
    apt update
    apt install ecl -y
    git config --global user.email "coluna123@protonmail.ch"
    git config --global user.name "foxx3r"
    npm config set strict-ssl false
    npm i -g yarn
    yarn config set strict-ssl false
    pip install httpie
fi

cd $HOME
mkdir programacao math livros musicas filmes
cd programacao
mkdir javascript/projetos javascript/git javascript/learn haskell/projetos haskell/git haskell/learn rust/projetos rust/git rust/learn shell/projetos shell/git shell/learn html/projetos html/git html/learn css/projetos css/git css/learn python/projetos python/git python/learn lisp/projetos lisp/git lisp/learn fsharp/projetos fsharp/git fsharp/learn prolog/projetos prolog/git prolog/learn java/projetos java/git java/learn c/projetos c/git c/learn cpp/projetos cpp/git cpp/learn v/projetos v/git v/learn vimscript/projetos vimscript/git vimscript/learn sql/projetos sql/git sql/learn -p
git clone https://github.com/foxx3r/amazing-vimrc vimscript/git/amazing-vimrc
git clone https://github.com/foxx3r/ap_haskell haskell/git/ap_haskell
git clone https://github.com/foxx3r/josephus_problem_haskell haskell/git/josephus_problem_haskell
git clone https://github.com/foxx3r/binary_search_haskell haskell/git/binary_search_haskell
git clone https://github.com/foxx3r/parser_dict_haskell haskell/git/parser_dict_haskell
git clone https://github.com/foxx3r/nucleotide_counter haskell/git/nucleotide_counter
git clone https://github.com/foxx3r/game_random_haskell haskell/git/game_random_haskell
git clone https://github.com/foxx3r/quicksort_haskell haskell/git/quicksort_haskell
git clone https://github.com/foxx3r/graphs_in_haskell haskell/git/graphs_in_haskell
git clone https://github.com/foxx3r/queues_in_haskell haskell/git/queues_in_haskell
git clone https://github.com/foxx3r/binary_tree_haskell haskell/git/binary_tree_haskell
git clone https://github.com/foxx3r/stack-haskell haskell/git/stack-haskell
git clone https://github.com/foxx3r/PSND_project javascript/git/PSND_project
git clone https://github.com/foxx3r/nodejs-tutorial javascript/git/nodejs-tutorial
git clone https://github.com/foxx3r/faker-api javascript/git/faker-api
git clone https://github.com/foxx3r/api_with_sequelize javascript/git/api_with_sequelize
git clone https://github.com/foxx3r/learn_cpp cpp/git/learn_cpp
git clone https://github.com/foxx3r/learn_v v/git/learn_v
git clone https://github.com/foxx3r/learn_rust rust/git/learn_rust
git clone https://github.com/foxx3r/calculator_in_rust rust/git/calculator_in_rust
git clone https://github.com/foxx3r/translator-py python/git/translator-py
git clone https://github.com/foxx3r/learn-db python/git/learn-db
git clone https://github.com/foxx3r/apt_fox shell/git/apt_fox
git clone https://github.com/foxx3r/comparador-de-hashs shell/git/comparador-de-hashs
git clone https://github.com/foxx3r/monitor-do-sistema shell/git/monitor-do-sistema
git clone https://github.com/foxx3r/whereisfox shell/git/whereisfox
git clone https://github.com/foxx3r/auto_install shell/git/auto_install

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(wget -O- https://raw.githubusercontent.com/foxx3r/amazing-vimrc/master/install.sh)"

if [[ -d "~/.emacs.d" ]]
then
    rm -rf ~/.emacs.d
fi
if [[ -e "~/.spacemacs" ]]
then
    rm -rf ~/.spacemacs
fi
git clone git@github:foxx3r/awesome_spacemacs ~/.
rm -rf ~/.git
