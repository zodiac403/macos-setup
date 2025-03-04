echo "== INSTALL JAVA AND KOTLIN =="

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install \
    kotlin \
    openjdk

echo ""
echo "=== CODE INSTALL EXTENSIONS ==="
code --version # check code installation
for EXTENSION in \
    mathiasfroehlich.kotlin; do
    code --install-extension $EXTENSION
done

echo ""
echo "== SUCCESS =="
