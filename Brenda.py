print(" Brenda Muthoni")

print("brendaksoni90@gmail.com")

print("slack: @Brenda")

print("twitter: @Brendaksoni")

print("biostack:Genomics")

from scipy.spartial.distance import hamming

def HammingDistance(slack,twitter):
  i = 0
  count =0
  while(i <len(slack)):
    if(slack[i] != twitter[i]):
      count += 1
    i += 1
 return count
slack = "@Brenda"
twitter = "@Brendaksoni"
print( HammingDistance(slack,twitter))
