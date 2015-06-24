#!/usr/bin/perl
use CGI qw/:standard/;
my $accept_types =$ENV{'HTTP_ACCEPT'}; 
my $request_method =$ENV{'REQUEST_METHOD'}; 
my @answer1 = `/bin/ls /var/www/solar`;
#read(STDIN, $Formulardaten, $ENV{'CONTENT_LENGTH'});
#my @Formularfelder = split(/&/, $Formulardaten);
 print
 header,
 start_html('Simple Script'),
 h1('Simple Script');
 while ( ($env_var, $info) = each %list ) {
		       print $info, "<B>", $ENV{$env_var}, "</B>", "<BR>","\n";
	   }
print
start_form,
# "What's your name? ",textfield('name'),p,
# "What's the combination?",
 checkbox_group(-name=>'status',
		 -values=>['PWSTANDBY'],
		 -defaults=>['PWON']),p,
 "Was soll ich spielen ?",
 popup_menu(-name=>'Favoriten',
		 -values=>\@answer1),p,
 #-values=>['red','green','blue','chartreuse']),p,
 submit,
 h3("Run: "),
 #"Query: $ENV{'CONTENT_LENGTH'}",
 "$accept_types",
 "$request_method",
 end_form,
 hr,"\n";

 if (param) {
		 print
		 #"Your name is ",em(param('name')),p,
		 #"The keywords are: ",em(join(", ",param('status'))),p,
		 "Gespielt wird ",em(param('Favoriten')),"\n",p,"\n\n";
#	    sleep 3;
#		$CMD = "PWON"; 
#		telnet_cmd($CMD);
     if ((param('Favoriten') =~ /(\w+)\.png/)){ 
		print "</div>";
		print "<div class='graph'>";
		print "<h2>$1</h2>";
	    print "<img src=../solar/$1.png title=$1.png alt=$1.png />";
		print "</div>";
   }
 }

# print "Formularfelder:","\n\n";
#  foreach $Feld (@Formularfelder){
#  if(/FV(\d+) /){
#	telnet_cmd("FV $1");	  
#  }	
#	print "$Feld","\n";
# }	

 print end_html;
#print 
#    header, 
#	start_html('Simple Script'), 
#	h1('Simple Script'), 
#	popup_menu(-name=>'Favoriten', 
#	-values=>['red','green','blue','chartreuse']),p,		
##	-values=> \@answer1),p, 
#	submit, 
#	end_form, 
#	hr,
#	"\n";
 #
#	if (param) {
#		print	
#		    "Your name is ",em(param('Favoriten')),p,
#			"The keywords are: ",em(join(", ",param('status'))),p,
#			"Your favorite color is ",em(param('color')),".\n";
#	}
#	print end_html;
