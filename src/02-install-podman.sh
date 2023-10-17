echo "== INSTALL PODMAN =="

echo "=== BREW INSTALL ==="
brew --version  # check brew installation
brew update && brew upgrade
brew install \
  podman

echo "=== VERIFY VERSIONS ==="
echo "podman --version" && podman --version

echo "== SUCCESS =="
