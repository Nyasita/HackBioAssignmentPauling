from scipy.spatial.distance import hamming
# Calculate hamming distance
# define arrays
slack_username = ['@', 'S', 'i', 'l', 'v', 'e', 'r', 'y', 'B', 'u', 'b', 'b', 'l', 'e']
twitter_handle = ['@', 'E', 'l', 'i', 's', 'h', 'a', 'm', 'a', '_', 'Y', 'o', 'm', 'i']
# calculate Hamming distance between the two arrays
hamming_distance = hamming(slack_username, twitter_handle) * len(slack_username)
print("Elishama Yomi-Agbajor, elishamayomiagbajor@gmail.com, @SilveryBubble, Public health and Genomic Epidemiology, @Elishama_Yomi, 13.0")
