
// script for Hackbio's first assignment
//print my name
let name ='Oluwadara Adepoju';
//print mail ID
let email = 'daraadepoju007@gmail.com';
//print Slack username
let Slack_username = '@Oluwadara'
//print Biostack
let  biostack = 'Data Analytics';
//print twitter handle
let twitter_handle ='@Dha_ra'
function hammingDist(str1, str2)
    {
        let i = 0,count =0;
        while(i< str1.lenght)
        {
            if (str1[i] != str2[i])
            count ++;
            i++;
        }
            return count;

    }
    let str1 = '@Oluwadara';
    let str2 ='@Dha_ra';
    foo = hammingDist(str1,str2)

    console.log(name,email,Slack_username,biostack,twitter_handle,foo)
