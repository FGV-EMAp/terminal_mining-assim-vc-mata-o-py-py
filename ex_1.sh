cd ../Dados
find -name "*.txt" -exec cat {} + | wc -w
