# Construção do índice de alinhamento com Bowtie
bowtie-build reference.fasta reference_index

# Alinhamento das sequências contra a referência de Wolbachia
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log

# -f: Entrada em formato FASTA
# -S: Saída em formato SAM
# -a: Permite múltiplos alinhamentos
# -v 0: Permite até 0 mismatches (erros)
# -p 3: Usa 3 threads para o alinhamento
# -t: Exibe informações sobre o tempo de execução
