use strict;
use warnings;

print "Enter a string: ";
my $input = <STDIN>;  # get user input
chomp $input;  # remove newline character

$input =~ s/hi//g;  # replace all occurrences of "hi" with an empty string

print "Output: $input\n";
