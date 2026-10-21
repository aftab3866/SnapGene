# Install package (if not already installed)
install.packages("plasmidplot")

library(plasmidplot)

# 1. Read .dna file
# The function automatically recognizes SnapGene binary format
my_plasmid <- read_plasmid("seq.dna")

# 2. Extract sequence
# Typically sequences are stored in slots of the plasmid object
# You can use str(my_plasmid) to view the structure and find the specific sequence slot name (such as $sequence)
# Assuming the extracted sequence is a character vector or DNAStringSet
dna_seq <- my_plasmid$sequence 

# 3. Write to FASTA file
# If the sequence is a simple character vector, you can write it manually
writeLines(paste0(">", "output_res"), "output_res.fasta")
writeLines(as.character(dna_seq), "output_res.fasta", sep = "\n")

# Or, if the sequence is in Biostrings' DNAStringSet format,
# you can use the Biostrings package's writeXStringSet function to export directly
# library(Biostrings)
# writeXStringSet(dna_seq, filepath = "output.fasta", format = "fasta")