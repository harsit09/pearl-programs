# Linked Lists

print "Making Linked Lists\n";
## Method #1 using 2D Arrays

sub print_list {
  $max = $_[0];
  for ($i=0; $i<$max; $i++)
  {
    print "$i.  $list[$i][0]\t $list[$i][1]\n";
  }
}

# Declaring a 2-D Array, which is just an array of 1-D arrays

@list = ( ["vi   ", "Null"], ["emacs", "Null"], ["joe  ", "Null" ]);

$max = $#list + 1;

print "Initial Values\n";
print_list($max);

print "\n\n";

Making Linked Lists
Initial Values
0. vi                 Null
1. emacs           Null
2. joe               Null
