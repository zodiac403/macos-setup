echo "== INSTALL BASEIC APPLICATIONS =="

echo "=== BREW INSTALL ==="
brew --version  # check brew installation
brew update && brew upgrade
brew install \
  awscli \
  git \
  jq \
  node \
  protobuf

brew install --cask \
  brave-browser \
  chromium \
  keepassxc \
  inkscape \
  rectangle \
  vscodium \
  yed

echo "=== VERIFY VERSIONS ==="
echo "codium --version" && codium --version
echo "node --version" && node --version
echo "npm --version" && npm --version

echo "== SUCCESS =="
