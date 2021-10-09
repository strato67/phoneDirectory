#Saaransh Sharma

#Getting user input
print "Enter a first name, last name or any portion of a person's name \n";
my $name = <STDIN>;

my $phone = 'phones';

#	Count stores the number of times user's phrase is found,
#	directStore keeps line it was found at
my $count = 0;
my $directStore = "";

#Removes whitespace
chomp $name;

open (FILE, '<', $phone) or die $!;

while (<FILE>){
	
	#If match found, increase counter and append directStore
	if($_ =~ m/$name/i){
		$count++;
		$directStore = $directStore . $_;
	}	

}

close(FILE);

#Checks if matches were found; if not display error
if($count gt 0){
	print "\n$count matches were found for $name:\n$directStore";
}else{
	print "\n$name NOT found in the phone directory file!\n";

}
