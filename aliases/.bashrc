EQUINOX_BASH_FILE=~/.bashrc.equinox

if test -f $EQUINOX_BASH_FILE; then
    source $EQUINOX_BASH_FILE
    echo "[OK] Variáveis do arquivo '$EQUINOX_BASH_FILE' carregadas com sucesso."
else
    echo "======================================================================================================================="
    echo "  ARQUIVO '$EQUINOX_BASH_FILE' NÃO ENCONTRADO. NÃO SERÁ POSSÍVEL UTILIZAR OS ALIAS CRIADOS NO ARQUIVO '.bashrc'"
    echo "========================================================================================================================"
fi

GW_BASH_FILE=~/.bashrc.gw

if test -f $GW_BASH_FILE; then
    source $GW_BASH_FILE
    echo "[OK] Variáveis do arquivo '$GW_BASH_FILE' carregadas com sucesso."
else
    echo "======================================================================================================================="
    echo "  ARQUIVO '$GW_BASH_FILE' NÃO ENCONTRADO. NÃO SERÁ POSSÍVEL UTILIZAR OS ALIAS CRIADOS NO ARQUIVO '.bashrc'"
    echo "========================================================================================================================"
fi

alias bu='source ~/.bashrc'