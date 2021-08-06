Name = "Hesborn Omwandho"

Email = "hesbornomwandho@gmail.com"

Slack = "@hesborn,"

Twitter = "@hesbornomwandho"

Biostack = "vaccine informatics"

print ("My name is ",Name,",", 
       "My email adress is ",Email,",",
       "My slack username is ",Slack,",",
       "My biostack is ",Biostack)
       
def HammingDistance(slack,twitter):
    if len(slack) > len(twitter):
        return(len(slack)- len(twitter))
    elif len(twitter) > len(slack):
        return(len(twitter)- len(slack))
    else:
        return("hamming distance is 0")
   
Slack = "@hesborn"
Twitter = "@hesbornomwandho"
print( HammingDistance(Slack,Twitter))
