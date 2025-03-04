echo "== INSTALL COMMON EXTENSIONS FOR VS CODE =="

echo "=== INSTALL COMMON EXTENSIONS ==="
code --version # check code installation
for EXTENSION in \
  dbaeumer.vscode-eslint \
  EditorConfig.EditorConfig \
  emilast.LogFileHighlighter \
  esbenp.prettier-vscode \
  mechatroner.rainbow-csv \
  streetsidesoftware.code-spell-checker; do
  code --install-extension $EXTENSION
done

echo "=== INSTALL MARKDOWN EXTENSIONS ==="
for EXTENSION in \
  bierner.markdown-preview-github-styles \
  darkriszty.markdown-table-prettify \
  DavidAnson.vscode-markdownlint \
  huntertran.auto-markdown-toc \
  marp-team.marp-vscode \
  sugatoray.vscode-markdown-extension-pack \
  yzane.markdown-pdf; do
  code --install-extension $EXTENSION
done

echo "== SUCCESS =="
