#!/bin/bash

HOME_DIR="$HOME"
TEMP_DIR="$(mktemp -d)"
REPO_URL="https://github.com/aksodoaksd/ThatsItVim.git"
VIM_DIR="$HOME_DIR/.vim"
VIMRC="$HOME_DIR/.vimrc"

msg() {
  local text="$1"
  local div_width="80"
  printf "%${div_width}s\n" ' ' | tr ' ' -
  printf "%s\n" "$text"
}

check_vim_version() {
    if ! command -v vim &>/dev/null; then
        echo "❌ Vim is not installed. Please install Vim 8+."
        echo "   Visit: https://www.vim.org/download.php"
        exit 1
    fi

    vim_version=$(vim --version | head -n 1 | awk '{print $5}')
    if (( $(echo "$vim_version < 8.0" | bc -l) )); then
        echo "❌ Vim version must be 8.0 or higher. Current version: $vim_version"
        echo "   Visit: https://www.vim.org/download.php"
        exit 1
    fi
}

check_vim_python() {
    vim --cmd 'echo has("python3")' --cmd 'qall!' 2>/dev/null | grep -q "1"
    if [[ $? -ne 0 ]]; then
        echo "❌ Vim is missing Python 3 support."
        echo "   Ensure Vim is compiled with +python3 support."
        echo "   On Debian/Ubuntu: sudo apt install vim-nox"
        echo "   More info: https://github.com/vim/vim"
        exit 1
    fi
}

check_node() {
    if ! command -v node &>/dev/null; then
        echo "❌ Node.js is not installed. Please install Node.js."
        echo "   Visit: https://nodejs.org/"
        exit 1
    fi
}

msg "🔍 Checking system requirements..."
check_vim_version
check_vim_python
check_node
echo "✅ All requirements met! Proceeding with installation..."

# Check optional dependencies
MISSING_OPTIONALS=()
if ! command -v fd &>/dev/null; then
  MISSING_OPTIONALS+=("⚡ fd: Used for fast file searching in FZF (https://github.com/sharkdp/fd)")
fi
if ! command -v bat &>/dev/null; then
  MISSING_OPTIONALS+=("🎨 bat: Provides syntax highlighting for FZF previews (https://github.com/sharkdp/bat)")
fi

msg "📥 Cloning That's It VIM configuration..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR"

mkdir -p "$VIM_DIR"

msg "📦 Installing Vim configuration..."
cp "$TEMP_DIR/thatsit/.vimrc" "$VIMRC"
cp -r "$TEMP_DIR/thatsit/"* "$VIM_DIR/"

# Cleanup
rm -rf "$TEMP_DIR"
vim -e +'PlugInstall --sync' +qa

msg "🎉 Installation complete, enjoy!"


if [ ${#MISSING_OPTIONALS[@]} -gt 0 ]; then
  msg "⚠️  Optional dependencies missing:"
  for dep in "${MISSING_OPTIONALS[@]}"; do
    echo "- $dep"
  done
fi

end() {
  cat <<'EOF'

 /$$$$$$$$ /$$                   /$$   /$$              /$$$$$$ /$$           /$$    /$$ /$$$$$$ /$$      /$$
|__  $$__/| $$                  | $$  | $/             |_  $$_/| $$          | $$   | $$|_  $$_/| $$$    /$$$
   | $$   | $$$$$$$   /$$$$$$  /$$$$$$|_//$$$$$$$        | $$ /$$$$$$        | $$   | $$  | $$  | $$$$  /$$$$
   | $$   | $$__  $$ |____  $$|_  $$_/  /$$_____/        | $$|_  $$_/        |  $$ / $$/  | $$  | $$ $$/$$ $$
   | $$   | $$  \ $$  /$$$$$$$  | $$   |  $$$$$$         | $$  | $$           \  $$ $$/   | $$  | $$  $$$| $$
   | $$   | $$  | $$ /$$__  $$  | $$ /$$\____  $$        | $$  | $$ /$$        \  $$$/    | $$  | $$\  $ | $$
   | $$   | $$  | $$|  $$$$$$$  |  $$$$//$$$$$$$/       /$$$$$$|  $$$$/         \  $/    /$$$$$$| $$ \/  | $$
   |__/   |__/  |__/ \_______/   \___/ |_______/       |______/ \___/            \_/    |______/|__/     |__/

EOF
}

end


