@days = ("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun");

@weekdays = @days[3,4,5];

print "@weekdays\n";

@weekdays = qw/Monady Tuesday Wednesday/;
@weekdays = @weekdays[1];
print "@weekdays\n";