#!/usr/bin/bash

for pasta in contos critica cronica miscelanea poesia romance teatro traducao;
do
    for file in ../Dados/machado/$pasta/*.txt;
    do
        # selecione as 3 primeiras linhas do arquivo | seleciona a última linha da seleção anterior | arquiva tudo em "titulos"
        head -n 3 "$file" | tail -n 1 >> titulos
    done
done

sort titulos >> resposta_ex_2
rm titulos