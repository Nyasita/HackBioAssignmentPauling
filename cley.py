# Name: First and Last
name = 'Clement Mlay'

# Email
email = 'mlay.clement@gmail.com'

# Slack Username
slack_username = '@clementmlay'

# Twiter
twitter = '@clement_mlay'

# Biostack
biostack = 'Genomics'

print(f'Name: {name} \nEmail: {email} \
    \nSlack Username: {slack_username} \ntwitter Username: {twitter} \nBiostack: {biostack}')

# Humming Distance
def HammDist(slack_username,twitter):
    a=slack_username
    b=twitter
    if len(a)>len(b):
        print('Hamming Distance is:', len(a)-len(b))
    elif len(b)>len(a):
        print('Hamming Distance is:', len(b)-len(a))
    else:
        print('No Hamming Distance')
	

