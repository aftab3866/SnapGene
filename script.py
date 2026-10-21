from snapgene_reader import snapgene_file_to_seqrecord

# Read the .dna file
record = snapgene_file_to_seqrecord("seq.dna")

# Write to FASTA
with open("output.fasta", "w") as f:
    f.write(record.format("fasta"))