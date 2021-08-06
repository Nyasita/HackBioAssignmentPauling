
install.packages("stringdist")

library(stringdist)

name <- c("Marion Nyaboke")
email <- c("marionnyaboke01@gmail.com")
slack_username <- c("@marion")
biostack <- c("data analytics")
twitter <- c("@marion")


hamming_distance <- stringdist("@marion", "@marion", method = 'hamming')
hamming_distance


cat(name,email,slack_username,biostack,twitter,hamming_distance)
