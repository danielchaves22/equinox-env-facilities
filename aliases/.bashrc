#!/bin/bash
SCRIPT_PATH=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
EQUINOX_BASH_FILE=$SCRIPT_PATH/.bashrc.equinox

if test -f $EQUINOX_BASH_FILE; then
    source $EQUINOX_BASH_FILE
else
    echo "======================================================================================================================="
    echo "  ARQUIVO '$EQUINOX_BASH_FILE' NÃO ENCONTRADO. NÃO SERÁ POSSÍVEL UTILIZAR OS ALIAS CRIADOS NO ARQUIVO '.bashrc'"
    echo "========================================================================================================================"
fi

GW_BASH_FILE=$SCRIPT_PATH/.bashrc.gw

if test -f $GW_BASH_FILE; then
    source $GW_BASH_FILE
else
    echo "======================================================================================================================="
    echo "  ARQUIVO '$GW_BASH_FILE' NÃO ENCONTRADO. NÃO SERÁ POSSÍVEL UTILIZAR OS ALIAS CRIADOS NO ARQUIVO '.bashrc'"
    echo "========================================================================================================================"
fi

alias bu="source $SCRIPT_PATH/.bashrc"