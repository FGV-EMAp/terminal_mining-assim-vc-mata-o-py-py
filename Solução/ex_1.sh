#!/usr/bin/bash

echo > obra_completa.txt # esvazia o arquivo, caso exista

# itera sobre as pastas onde estão os arquivos de texto
for pasta in contos critica cronica miscelanea poesia romance teatro traducao;
do
    # pra cada pasta, acessa todos os arquivos ".txt" e concatena os arquivos em "obra_completa.txt"
    cat ../Dados/machado/$pasta/*.txt >> obra_completa.txt
done

# lê o conteúdo do arquivo | conta a quantidade de palavras
cat obra_completa.txt | wc -w > resposta_ex_1

# remove o arquivo temporário "obra_completa.txt"
rm obra_completa.txt