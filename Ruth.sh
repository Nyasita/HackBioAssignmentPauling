#!/bin/bash
Name="Ruth Moraa"
email_address="moraaruth33@gmail.com"
slack_username="@RuthMoraa"
twitter_handle="@moraaruth2"
biostack="Genomics"
echo $Name 
echo $email_address
echo $slack_username
echo $twitter_handle
echo $biostack
#finding the hamming distance
if [  email_address =  slack_username ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi
#finding the difference between the string
emaillength=${#email_address}
slacklength=${#slack_username}
hammingdistance=`expr  $emaillength - $slacklength`

echo "The  hamming distance is $hammingdistance"

