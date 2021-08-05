from scipy.spatial.distance import hamming
name = "Elishama Yomi-Agbajor"
email_address = "elishamayomiagbajor@gmail.com"
slack_username = "@SilveryBubble"
biostack = "Public health and Genomic Epidemiology"
twitter_handle = "@Elishama_Yomi"
print(name)
print(email_address)
print(slack_username)
print(biostack)
print(twitter_handle)
# Calculate hamming distance
#define arrays
str1 = ['@', 'S', 'i', 'l', 'v', 'e', 'r', 'y', 'B', 'u', 'b', 'b', 'l', 'e']
str2 = ['@', 'E', 'l', 'i', 's', 'h', 'a', 'm', 'a', '_', 'Y', 'o', 'm', 'i']
#calculate Hamming distance between the two arrays
hamming_distance = hamming(str1, str2) * len(str1)
print(hamming_distance)
