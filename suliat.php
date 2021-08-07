#!/usr/bin/php
<?php
$name = "Suliat Abike Jimoh";
$mail = "suliatjimoh@gmail.com";
$slack_username = "@SuliJimoh";
$twitter = "sulistical";
$biostack = "Genomics";

// PHP program to find hamming distance b/w 
// two string
 
// function to calculate
// Hamming distance

 function hammingDist($str1, $str2)
{

    $i = 0; $count = 0;

    while (isset($str1[$i]) != '')

    {

        if ($str1[$i] != $str2[$i])

            $count++;

        $i++;

    }

    return $count;
}
 

    // Driver Code

    $str1 = "@SuliJimoh";

    $str2 = "sulistical";
 

    // function call


echo "$name,$mail,$slack_username,$biostack, $twitter," . hammingDist ($str1, $str2);



?>
