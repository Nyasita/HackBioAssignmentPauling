HackBio Firsttask
#Print my name
print ("Pravitha KS")
#Print mail ID
print ("pravithaksivanandan@gmail.com")
#print <slack_handle>@
print ("Pravithaks10277")
#print Biostack
print ("Drug development")
#print <twitter_handle>
print ("Pravisivanandan")
#calculating Hamming distance between <slack_handle> and <twitter_handle>
library(stringdist)
stringdist("Pravithaks10277","Pravisivanandan", method = 'hamming',nthread = getOption("sd_num_thread"))
#print name, email, slack_handle, biostack, twitter_handle, hamming_distance 
print (paste ("Pravitha KS","pravithaksivanandan@gmail.com","@Pravithaks10277","Drug development","@Pravisivanandan","10"))
df <- data.frame(Name = c("Pravitha KS"),
                 Email = c("pravithaksivanandan@gmail.com"),
                 Slack_handle = c("@Pravithaks10277"),
                 Biostack = c("Drug development"),
                 Twitter_handle = c("@Pravisivanandan"),
                 Hamming_distance = c(10)
)
print (df)
write.table(df,file= "Exportedfirsttaskhackbio.csv", row.names = F, sep = ',' )
dev.off()
################################################
