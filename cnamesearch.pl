#!/usr/bin/perl

use Net::DNS;

($target, $zone) = @ARGV;

$res = new Net::DNS::Resolver;
foreach $rr ($res->axfr($zone)) {
    print $rr->name."\n" if (($rr->type eq "CNAME") && ($rr->rdatastr eq 
$target."."));
}
