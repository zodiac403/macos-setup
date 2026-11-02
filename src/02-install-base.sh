echo "== INSTALL BASIC APPLICATIONS =="

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install \
  awscli \
  git \
  jq \
  node \
  podman \ 
  protobuf

brew install --cask \
  brave-browser \
  google-chrome \
  keepassxc \
  inkscape \
  obsidian \
  visual-studio-code \
  yed

echo "=== VERIFY VERSIONS ==="
echo "code --version" && code --version
echo "node --version" && node --version
echo "npm --version" && npm --version
echo "podman --version" && podman --version

echo ""
echo "== SUCCESS =="
