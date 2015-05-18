s = c("Rcpi", "seqinr", "ggplot2")
sapply(s, require,character.only=TRUE)
x <- c("Q13547", "Q92769", "O15379", "P56524", "Q9UQL6", "Q9UBN7",
       "Q8WUI4", "Q9BY41", "Q9UKV0", "Q969S8", "Q96DB2")
sequence <- getFASTAFromUniProt(x)
write.fasta(sequence = sequence, names = names(sequence),
            nbchar = 80, ,file.out = "HDAC.fasta")
sequence <- readFASTA("HDAC.fasta")
#checkProtr function from Rcpi to remove wired protein sequence
sequence <- sequence[(sapply(sequence, checkProt))]
# All global descriptors that are in Rcpi will be extracted
#Amino acid composition #Dipeptide composition #Tripeptide composition
#Normalized Moreau-Broto autocorrelation #Moran autocorrelation
#Geary autocorrelation Composition Transition Distribution
#Conjoint Triad #Sequence-order-coupling number Quasi-sequence-order descriptors
#Pseudo-amino acid composition #Amphiphilic pseudo-amino acid composition
summary <- function(x) {
  c(extractProtAAC(x), extractProtDC(x), extractProtTC(x), extractProtMoreauBroto(x),
    extractProtMoran(x), extractProtGeary(x), extractProtCTDC(x), extractProtCTDT(x),
    extractProtCTDD(x), extractProtCTriad(x), extractProtSOCN(x), extractProtQSO(x),
    extractProtPAAC(x), extractProtAPAAC(x))
}
descriptors <- t(sapply(sequence, summary))
