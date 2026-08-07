#!/bin/bash

# ==================================
# Script: status_sistema.sh
# Autor: Luis Fernando Lima
# Data: 07/09/2026
# Descrição: Faz um relatório rápido
#            sobre o uso do disco
# ==================================

DISCO=$(df -h)

echo "Olá, $USER!"
echo "Agora são $(date)"
echo "O diretório atual é: $(pwd)"
echo "O disco tem o seguinte uso:"
echo "$DISCO"
