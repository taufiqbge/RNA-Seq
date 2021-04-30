
#directory
setwd("C:/Users/owner/Desktop/deseq2_geneios/test_volcano/analysis")

#import data 
data_c <- read.csv('up.csv', header = TRUE)

#find common genes
common_genes <- Reduce(intersect, data_c)

# save common gene as csv file 
write.csv(data.frame(common_genes), 'common_genes.csv', row.names = FALSE)
