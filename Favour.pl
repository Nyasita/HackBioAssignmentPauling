
#!/usr/bin/perl
use CGI qw(:standard -debug);
use strict;
# use warnings;

my $name = "Favour Oyelami";
my $email = 'oyefavour@gmail.com';
my $Slack_id = "OYEFAVOUR";
my $Biostack = "Epigenomics";
my $Twitter_Handle = "OYEFAVOUR";
my $Hamming_distance = 0;


my $size_1 = length ($Slack_id);
my $size_2 = length ($Twitter_Handle);
my $size = 0;

if ($size_1 > $size_2 ) {
		$size = $size_1;		
}else{
		$size = $size_2;
}

for (my $i=0; $i<=$size; $i++){
				my $n=0;
				my @Slack_id_ = split '', $Slack_id;
				my @Twitter_Handle_ = split '', $Twitter_Handle;
				if ($Slack_id_[$i] ne $Twitter_Handle_[$i]){
					$n++;
					$Hamming_distance = $Hamming_distance + $n ;
				}else{
					$Hamming_distance = 0;
	
				}
}

print "$name, $email, $Slack_id, $Biostack, $Twitter_Handle, $Hamming_distance \n";


