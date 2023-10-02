echo "== INSTALL PYTHON =="

PYTHON_VERSION="3.9"

echo "=== BREW INSTALL ==="
brew update && brew upgrade
brew install pyenv

echo "=== PYENV INSTALL ==="
pyenv init -
pyenv install $PYTHON_VERSION
pyenv versions

echo "=== PIP INSTALL ==="
pip3 install \
  autopep8 \
  pylint

echo "=== CODIUM INSTALL EXTENSIONS ==="
for EXTENSION in \
  ms-python.python \
  ms-python.isort \
  ms-python.pylint \
  LittleFoxTeam.vscode-python-test-adapter
do
  codium --install-extension $EXTENSION
done

echo "== SUCCESS =="
