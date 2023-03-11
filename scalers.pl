use strict;  
use warnings;  
use 5.010;  
my $x = "5";  
my $y;  
say $x + $y;         
say $x . $y;        
say $x x $y;  
if (defined $y) {  
  say "defined";  
} else {  
  say "NOT";           
}  


//op
// Use of uninitialized value $y in addition (+) at hw.pl line 9.
// 5
// Use of uninitialized value $y in concatenation (.) or string at hw.pl line 10.
// 5
// Use of uninitialized value $y in repeat (x) at hw.pl line 11.
// NOT
