echo "== INSTALL PYTHON =="

PYTHON_VERSION="3.12"

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install pyenv

echo ""
echo "=== PYENV INSTALL ==="
pyenv init -
pyenv install $PYTHON_VERSION
pyenv versions

echo "initialize global Python environment for Pyenv (optional)"
pyenv global $PYTHON_VERSION

echo ""
echo "=== PIP INSTALL ==="
pip3 install \
  autopep8 \
  pylint

echo ""
echo "=== CODE INSTALL EXTENSIONS ==="
code --version # check code installation
for EXTENSION in \
  ms-python.python \
  ms-python.isort \
  ms-python.pylint \
  LittleFoxTeam.vscode-python-test-adapter; do
  code --install-extension $EXTENSION
done

echo ""
echo "== SUCCESS =="
