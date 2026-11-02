echo "== INSTALL OTHER APPLICATIONS =="

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install \
  glab


brew install --cask \
  drawio \
  kiro \
  kiro-cli

echo ""
echo "AWS `kiro` and `kiro-cli` installed. Check logs above for potential further setup steps"

echo "" 
echo "=== VERIFY VERSIONS ==="
echo "glab --version" && glab --version

echo ""
echo "== SUCCESS =="
