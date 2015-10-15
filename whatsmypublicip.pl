#!/usr/bin/perl  
# get HTML file with external IP address 
system ("wget -q http://ident.me/"); 
open(FILE, '<index.html') || die("Could not open file!"); 
chomp (@lines = (<FILE>));
$ip='(\d+)\.(\d+)\.(\d+)\.(\d+)';
print "IP address is:-->>@lines\n";
close (FILE);
unlink("index.html");
