setwd("~/Dropbox/ACMBCB/")
install.packages("devtools")
library(devtools)
install_git("https://git.bioconductor.org/packages/genbankr")
library(genbankr)
#source('https://bioconductor.org/biocLite.R')
#BiocManager::install("BiocUpgrade")
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))
library("Biostrings")
library(bio3d)
################
gb = readGenBank("./sequence.gbk")
tags <- mcols(cds(gb))[,c(2,3)]
oldlocustag<- NULL 
for(i in 1:nrow(tags))
{
  for (j in 1:nrow(bigtable))
  {
    if (as.character(tags[i,1]== bigtable[j,1] ))
    {
      oldlocustag<- rbind(oldlocustag,as.character(tags[i,2]))
      #--------------------------- read STRING ---------------------------------#
      
      break(j)
    }
  }
  print(i)
}
}
write
