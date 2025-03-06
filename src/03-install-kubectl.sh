echo "== INSTALL KUBECTL =="

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install kubectl

echo ""
echo "=== CONFIGURE KUBECTL ALIASES ==="
echo "-> reference: <https://github.com/ahmetb/kubectl-aliases>"
ALIASES_FILE="~/.kubectl_aliases"
echo "download aliases file to '${ALIASES_FILE}'"
curl -fs https://raw.githubusercontent.com/ahmetb/kubectl-aliases/refs/heads/master/.kubectl_aliases > ${ALIASES_FILE}

for RC_FILE in \
    "~/.bashrc" \
    "~/.zshrc"; do
    if [ -f ${RC_FILE} ]; then
        echo "configure '${RC_FILE}'"
        cp ${RC_FILE} ${RC_FILE}.backup
        cat << EOF >> ${RC_FILE}

# kubectl aliases
[ -f ${ALIASES_FILE} ] && source ${ALIASES_FILE}
function kubectl() { echo "+ kubectl \$@">&2; command kubectl \$@; }
EOF
        source ${RC_FILE}
    else
        echo "skip '${RC_FILE}' (not present)"
    fi
done

echo ""
echo "== SUCCESS =="
