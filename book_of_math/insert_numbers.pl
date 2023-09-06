#!/bin/perl

# Open the input file for reading
open(my $input_fh, '<', 'book_of_math.tex') or die "Failed to open input.txt: $!";

# Open the output file for writing
open(my $output_fh, '>', 'tmp.tex') or die "Failed to open output.txt: $!";

# Read each line from the input file
while (my $line = <$input_fh>) {
	# Replace <DIGIT-DIGIT> with a random number from DIGIT to DIGIT
	$line =~ s/<(\d)-(\d)>/int(rand($2 + 1 - $1) + $1)/eg;
	
	# Write the modified line to the output file
	print $output_fh $line;
}

# Close the file handles
close($input_fh);
close($output_fh);

print "File processing complete.\n";
