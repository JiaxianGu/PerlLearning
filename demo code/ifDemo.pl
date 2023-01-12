$a = 1;
if ($a == 1) {
    $b = 2;
}
print $b;
print "\n";

%methods = ('create' => \&create_domains,);
print %methods{'create'};
print "\n";
print \$b;
print "\n";

$c = 3;
@myarray = ($a, $b, $c);
@myarray = (4,5,6);

print @myarray;
print "\n"