echo "== INSTALL COMMON EXTENSIONS FOR VS CODIUM =="

echo "=== INSTALL COMMON EXTENSIONS ==="
for EXTENSION in \
  dbaeumer.vscode-eslint \
  EditorConfig.EditorConfig \
  emilast.LogFileHighlighter \
  esbenp.prettier-vscode \
  mechatroner.rainbow-csv \
  streetsidesoftware.code-spell-checker;
do
  codium --install-extension $EXTENSION;
done

echo "=== INSTALL MARKDOWN EXTENSIONS ==="
for EXTENSION in \
  bierner.markdown-preview-github-styles \
  darkriszty.markdown-table-prettify \
  DavidAnson.vscode-markdownlint \
  huntertran.auto-markdown-toc \
  marp-team.marp-vscode \
  sugatoray.vscode-markdown-extension-pack \
  yzane.markdown-pdf;
do
  codium --install-extension $EXTENSION;
done

echo "== SUCCESS =="
