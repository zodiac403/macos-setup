echo "== INSTALL JAVA AND KOTLIN =="

echo "WARN: Will git clone into you home directory. Make sure to review"
echo "      the code before execution."

echo ""
echo "=== BREW INSTALL ==="
brew --version # check brew installation
brew update && brew upgrade
brew install kubectl

echo ""
echo "=== CONFIGURE KUBECTL ALIASES ==="
echo "    reference <https://github.com/ahmetb/kubectl-aliases>"
ALIASES_FILE="~/.kubectl_aliases"
curl -fs https://github.com/ahmetb/kubectl-aliases/blob/master/.kubectl_aliases > ${ALIASES_FILE}

for RC_FILE in \
    "~/.bashrc" \
    "~/.zshrc"; do
    if [-f ${RC_FILE} ]; then
        echo "configure ${RC_FILE}"
        cp ${RC_FILE} ${RC_FILE}.backup
        echo "" >> ${RC_FILE}
        echo "# kubectl aliases" >> ${RC_FILE}
        echo "[ -f ${ALIASES_FILE} ] && source ${ALIASES_FILE}" >> ${RC_FILE}
        # echo "function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }" >> ${RC_FILE}
        echo "" >> ${RC_FILE}

        source ${RC_FILE}
    fi

done

echo ""
echo "== SUCCESS =="
