$a = 10;
$var = <<gujiaxian;
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be 
interpolated. For example value of a = $a
gujiaxian
print "$var\n";