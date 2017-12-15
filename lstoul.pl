#!/usr/bin/perl -w
use strict;
use warnings;

my $num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "Usage: lstoul.pl path_to_directory\n";
    exit;
}
my $dir = $ARGV[0];

opendir(DIR, $dir) or die $!;
print "<ul>\n";
while (my $file = readdir(DIR)) {
    # test to check that it is a directory (-d) or file (-f)
    next unless (-f "$dir/$file");
    print "    <li>\n";
    print "        <a href=\"$file\">\n";
    print "            $file\n";
    print "        <\/a>\n";
    print "    <\/li>\n";
}
print "<\/ul>\n";
closedir(DIR);
exit 0;
