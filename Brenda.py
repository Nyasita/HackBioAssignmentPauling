print(" Brenda Muthoni")

print("brendaksoni90@gmail.com")

print("slack: @Brenda")

print("twitter: @Brendaksoni")

print("biostack:Genomics")

def HammingDistance(slack,twitter):
    slack = len(slack)
    twitter =len(twitter)
    if slack > twitter:
        return (slack- twitter)
    elif twitter > slack:
        return (twitter- slack)
    else:
        return (0)
    
slack = "@Brenda"
twitter = "@Brendaksoni"
print( HammingDistance(slack,twitter))
