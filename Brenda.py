print(" Brenda Muthoni")

print("brendaksoni90@gmail.com")

print("slack: @Brenda")

print("twitter: @Brendaksoni")

print("biostack:Genomics")

def HammingDistance(slack,twitter):
    if len(slack) > len(twitter):
        print(len(slack)- len(twitter))
    elif len(twitter) > len(slack):
        print(len(twitter)- len(slack))
    else:
        print("hamming distance is 0")
    
slack = "@Brenda"
twitter = "@Brendaksoni"
print( HammingDistance(slack,twitter))
