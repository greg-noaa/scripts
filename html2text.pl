#!/usr/bin/perl

use LWP::UserAgent;
use HTML::Parser;

$str = $ARGV[0];
$p = HTML::Parser->new();

if (length($str) > 1) {
    $ua = LWP::UserAgent->new();
    $ua->agent('Mozilla/5.0');
    $response = $ua->get('http://www.somewebsite.com);
    if ($response->as_string =~ m/$str/i) {
       print "Found \"".$str."\"\n";
    }
    else {
       print "Didn't find \"".$str."\"\n";
    }
}
else {
    print "Error: no string argument specified\n";
}

$p = HTML::Parser->new(
                        api_version => 3,
                        handlers => { text => [ \@array, "event,text" ] }
                      );
$p->parse($response);
$p->eof;
foreach (@array) {
    print "$_\n";
}

