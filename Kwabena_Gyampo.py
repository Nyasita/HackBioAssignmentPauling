# Name: First and Last
name = 'Kwabena Gyampo'

# Email
email = 'dentukwabena.kg@gmail.com'

# Slack Username
slack_username = '@Kwabena'

# Biostack
biostack = 'Genomics'

# Twitter Handle
twit_handle = '@_gyampo'


def hamming_distance(slack_handle, twitter_handle):
    '''
    Returns int counter which is the Hamming Distance of the two(2) strings,
    slack and twitter handle.
    '''

    # Check if slack and twitter handles are strings
    if not (isinstance(slack_handle, str) and isinstance(twitter_handle, str)):
        raise TypeError('Please enter a string of characters')

    if len(slack_handle) != len(twitter_handle):
        raise Exception('Hamming distance is only valid for strings of equal length')
    
    counter = 0

    for x, y in zip(slack_handle, twitter_handle):
        counter += (x!=y)

    # one line implementation
    # sum(x!=y for x,y in zip(slack_handle,twitter_handle))

    return counter


print(f'{name} \n{email} \
    \n{slack_username} \n{biostack} \
    \n{twit_handle} \n{hamming_distance(slack_username, twit_handle)}')
