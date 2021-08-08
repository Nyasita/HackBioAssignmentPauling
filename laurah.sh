
#!/bin/bash
Name="Laurah Ondari"
email_address="laurahondari@gmail.com"
slack_username="@Laurah"
twitter_handle="@_nyasita"
biostack="Genomics"
echo $Name
echo $email_address
echo $slack_username
echo $twitter_handle
echo $biostack
#finding the hamming distance

twitter_length=${#twitter_handle}
slack_length=${#slack_username}
hamming_distance=`expr $twitter_length - $slack_length`

echo " $hamming_distance"
