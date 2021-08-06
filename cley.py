# Name: First and Last
name = 'Clement Mlay'

# Email
email = 'mlay.clement@gmail.com'

# Slack Username
slack_username = '@clementmlay'

# Twiter
twiter = '@clement_mlay'

# Biostack
biostack = 'Genomics'

print(f'Name: {name} \nEmail: {email} \
    \nSlack Username: {slack_username} \nBiostack: {biostack}')

# Humming Distance
from scipy.spartial.distance import hamming
	
	def HammingDistance(slack_username,twitter):
	  i = 0
	  count =0
	  while(i <len(slack_username)):
	    if(first[i] != twitter[i]):
	      count += 1
	    i += 1
	 return count
	slack = "@clementmlay"
	twitter = "@clement_mlay"
	print( HammingDistance(slack_username,twitter))
	

