Name = "Hesborn Omwandho"

Email = "hesbornomwandho@gmail.com"

Slack = "@hesborn,"

Twitter = "@hesbornomwandho"

Biostack = "vaccine informatics"

print ("My name is ",Name,",", 
       "My email adress is ",Email,",",
       "My slack username is ",Slack_username,",",
       "My biostack is
       ",Biostack)
       
from scipy.spartial.distance import hamming
       
def HammingDistance(Slack,Twitter):
       i=0
       count =0
       while(i <len(slack)):
        if (slack[i] !=Twitter[i]):
              count += 1
       return count
       Slack = "@hesborn"
       Twitter = "@hesbornomwandho"
       
       print (HammingDistance( Slack,twitter))
       
       
 
