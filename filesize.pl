my($tmp,$sz);

if ($tmp = -s "dminpub_alpha.php") {
  $sz = $tmp/1000000;
}
else {
  $sz = 0.00000000000000000000000001;
}

print "\n";
if ($sz > 0.1) {
    printf("%.1f MB\n", $sz);
};
print $sz."\n";
