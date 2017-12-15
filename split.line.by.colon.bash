#!/bin/bash
perl -n -e '
@t = split(/:/,$_);
chomp(@t);
printf("%-100s|%s\n", $t[1], $t[0]);
' tmp.txt

