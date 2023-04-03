#!/usr/bin/bash

# procura o arquivo | transforma tudo em letras minúsculas | organizar em ordem
cat ../Dados/machado/contos/macn001.txt | sed -E 's/[[:punct:]]* +/\n/g;s/.*/\L&/g' | sort | uniq -c | sort -n > resposta_ex_4