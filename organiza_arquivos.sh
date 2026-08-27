#!/bin/bash

OPTION=1

while [ $OPTION != 0 ]; do
    echo "=================================="
    echo "     Sistema de Organização"
    echo "=================================="
    echo "MENU"
    echo "0 - Sair"
    echo "1 - Conferir diretório"
    echo "2 - Criar arquivos locais"
    echo "=================================="

    read OPTION

    if [ $OPTION -eq 0 ]; then
        echo "Saindo..."
        break
    fi

    if (( OPTION < 0 )); then
        clear
        echo "Opção inválida! Escolha novamente:"
        continue
    fi

    if [ $OPTION -eq 1 ]; then
        for ITEM in *; do
            if [ -f $ITEM ]; then
                echo "Arquivo encontrado: $ITEM"
            elif [ -d $ITEM ]; then
            echo "Diretório encontrado: $ITEM"
            fi
        done
        sleep 5
    elif [ $OPTION -eq 2 ]; then
        read -p "Escolha um número máximo de diretórios: " NUMDIR

        for i in {1..$NUMDIR}; do
            touch "log_$i.txt"
        done

        echo "Arquivos de log criados!"
        sleep 5
    fi
done