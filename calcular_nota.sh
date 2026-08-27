#!/bin/bash

NOTA=$1

if [ -z "$NOTA" ]; then
    read -p "Você não inseriu a nota, insira a nota para continuar:" NOTA
fi

if (( NOTA < 0 || NOTA > 10)); then
    echo "A nota $NOTA é inválida"
    exit 1
fi

if [[ $NOTA -ge 7 ]]; then
    echo "Aprovado"
elif [[ $NOTA -ge 5 && $NOTA -lt 7 ]]; then
    echo "Recuperação"
else
    echo "Reprovado"
fi

if [ -f "boletim.txt" ]; then
    echo "Boletim encontrado"
else
    echo "Boletim não encontrado"
fi