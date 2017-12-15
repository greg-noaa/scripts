puts '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>Colors</title>
<style>
ul {
    list-style: none;
    margin: 0 0 0 0;
    padding: 0 0 0 0;
}
.col, .col_1, .col_2 {
    float: left;
}
.col_1, .col_2 {
    width: 50px;
    margin: 2px 5px 2px 5px;
}
</style>
</head>
<body>
<div class="col">
    <ul>
'

if (1 == 0) 
0x000000.upto(0xffffff) { |i|
rgb = "%06x" % i
puts "<li><div class=\"col_1\">##{rgb}</div><div class=\"col_2\" style=\"background-color: ##{rgb};\">&nbsp;</div></li>"
}
end

if (1 == 0) 
0x000000.step(0xffffff, 0x000033) { |i|
rgb = "%06x" % i
puts "<li><div class=\"col_1\">##{rgb}</div><div class=\"col_2\" style=\"background-color: ##{rgb};\">&nbsp;</div></li>"
}
end

["00","33","66","99","cc","ff"].each { |r|
  ["00","33","66","99","cc","ff"].each { |g|
    ["00","33","66","99","cc","ff"].each { |b|
rgb = r+g+b
puts "<li><div class=\"col_1\">##{rgb}</div><div class=\"col_2\" style=\"background-color: ##{rgb};\">&nbsp;</div></li>"    
    }
  }
}

puts '
    </ul>
</div>
</body>
</html>
'
