#!/bin/bash

# ==================
# Script: criar_pasta.sh
# Autor: Luis Fernando Lima
# Data: 15/09/2026
# Descrição: Script para
#            criar pastas
# ==================

NOME_PASTA=$1

if [ -z "$NOME_PASTA" ]; then
  read -p "Você não passou o nome da pasta, Digite agora: " NOME_PASTA
fi

echo "A pasta que será usada é a: $NOME_PASTA"

mkdir $NOME_PASTA

echo "A pasta foi criada com sucesso! Foram usados $# argumentos"
