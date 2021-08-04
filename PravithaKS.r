#Print my name
print ("Pravitha KS")
#Print mail ID
print ("pravithaksivanandan@gmail.com")
#print <slack_handle>@Team name
print ("Pravithaks10277@Pauling")
#print Biostack
print ("Drug development")
#print <twitter_handle>
print ("Pravisivanandan")
#calculating Hamming distance between <slack_handle> and <twitter_handle>
library(stringdist)
stringdist("Pravithaks10277","Pravisivanandan", method = 'hamming',nthread = getOption("sd_num_thread"))