#!/usr/bin/Rscript

#install and load packages
install.packages("stringdist")
library(stringdist)

#brief introduction
Name <- cat("Pauline King'ori")
Email <- cat("paulinewangeci3@gmail.com")
Slack <- cat("@Paulah_Kings")
Biostack <- cat("Genomics")
Twitter <- cat("@paulah_kings")
Hamming_distance <- cat(stringdist("@Paulah_Kings", "@Paulah_Kings", method = 'hamming'))

#print output
cat(Name,Email,Slack,Biostack,Twitter,Hamming_distance)
