name = "Nana Opeyemi Jane"
email_address = "jaynenana18@gmail.com"
slack_username = "@nana"
twitter = "@aara"
biostack = "Genomics"
def hammingDist (str1, str2):
    i = 0
    count = 0
    while (i < len(str1)):
        if (str1[i] != str2[i]):
            count += 1 
            i += 1
            return count
            
str1 = "@nana"
str2 = "@aara"

print(name, email_address, slack_username, biostack, twitter, hammingDist(slack_username, twitter))

