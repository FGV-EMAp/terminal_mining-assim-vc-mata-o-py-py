#!/usr/bin/bash

# pega a primeira linha dos arquivos de texto | remove ".htm" ou ",htm" | remove "CONTO" | converte datas para " XXXX" | imprime o título e a data de forma formatada | ordena por ordem alfabética
head -qn1 ../Dados/machado/*/*.txt | sed -E 's/(,|.)htm//g' | cut -d' ' -f2- | sed -E 's/,([0-9]{4})/ \1/g' | awk '{print $NF,$0}' | LC_ALL=C sort -n | cut -d' ' -f2- > resposta_ex_3