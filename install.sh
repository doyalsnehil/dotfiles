#!/bin/bash

# Clone the dotfiles repository
git clone https://github.com/Snehil2004/dotfiles.git ~/dotfiles

# Copy configuration files to their corresponding locations
cp ~/dotfiles/.tmux.conf ~/.tmux.conf
cp ~/dotfiles/.zshrc ~/.zshrc

# Set up the tmuxifier if you added it later
if [ -d "~/dotfiles/.tmuxifier" ]; then
    cp -r ~/dotfiles/.tmuxifier ~/.tmuxifier
fi

# Install required packages
sudo apt update
sudo apt install -y \
  build-essential \
  curl \
  git \
  htop \
  lldb \
  llvm \
  ncurses-dev \
  ntfs-3g \
  openssh-client \
  ripgrep \
  screen \
  tmux \
  tree \
  unzip \
  wget \
  zsh \
  cmatrix \
  software-properties-common \
  python3 \
  python3-pip \
  python3-venv \
  python3-dev

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Homebrew packages
brew install \
  berkeley-db@5 \
  binutils \
  bzip2 \
  clang-format \
  expat \
  gcc \
  gh \
  gmp \
  libedit \
  libevent \
  libffi \
  libmpc \
  libtirpc \
  libuv \
  libxml2 \
  lpeg \
  luajit \
  luv \
  mpdecimal \
  mpfr \
  ncurses \
  neovim \
  openssl@3 \
  pcre \
  python@3.12 \
  readline \
  sqlite \
  tmux \
  tree-sitter \
  unzip \
  utf8proc \
  zlib \
  zsh

# Install global npm packages
npm install -g corepack eslint prettier typescript

echo "Configuration files have been installed, necessary packages are set up, Homebrew packages are installed, and npm packages are installed."

