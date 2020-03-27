#!/bin/bash
# Escanear portas abertas na rede
# Primeira versão 03/2020

clear

echo -n  "Qual rede deseja escanear :"
read rede

echo -n "Qual porta deseja descobrir :"
read porta

echo Procurando hosts na rede $rede com a porta $porta...

nmap -sS -vv -p $porta $rede | grep "Discovered open port"
