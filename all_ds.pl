Perl Example #8
Simple Data Structures
About the Program
This program shows several techniques available in Perl for creating some standard data structures covered in Advanced Placement Computer Science. It includes an implementation of a stack, a queue, and three methods for generating a linked list. The first linked list is generated using a two-dimensional array, the second uses reference variables or pointers, and the third uses a hash.
#!/usr/bin/perl

## Simple Data Structures

# A Stack 

print "Making a Stack\n";
@stack = qw( awk bash chmod );
print "Initial stack:\n  @stack \n";
push (@stack, "diff");
print "Push item on stack:\n  @stack \n";
$item = "Emacs";
push (@stack, $item);
print "Push item on stack:\n  @stack \n";
$top = pop @stack;
print "Popping top of stack:  $top\n";
print "Final stack:\n  @stack \n\n";

Making a Stack
Initial stack:
    awk bash chmod
Push item on stack:
    awk bash chmod diff
Push item on stack:
    awk bash chmod diff Emacs
Popping top of stack: Emacs
Final stack:
    awk bash chmod diff

# A Queue

print "Making a \"First In First Out\" Queue\n";
@queue = qw( lpr mcopy ps );
print "Initial queue:\n  @queue \n";
unshift(@queue, "kill");
print "Add item to queue:\n  @queue \n";
$item = "df";
unshift(@queue, $item);
print "Add item to queue:\n  @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: $fifo\n"; 
print "Final queue:\n  @queue \n\n";


Making a "First In First Out" Queue
Initial queue:
    lpr mcopy ps
Add item to queue:
    kill lpr mcopy ps
Add item to queue:
    df kill lpr mcopy ps
Remove FIFO item: ps
Final queue:
    df kill lpr mcopy

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
# Create Some Links
$list[0][1] = 2;
$list[2][1] = 1;

print "Made Links\n";
print_list($max);

print "\n\n";
Made Links
0. vi                 2
1. emacs           Null
2. joe               1

$next = 0;

#Step through Linked List
print "Traversing list:\n";
while ($next !~ "Null"){
  print "$list[$next][0] \n";
  $next = $list[$next][1];
}

print "\n\n";

Traversing list:
vi
joe
emacs

## Method #2  Reference Variables, or Pointers

@links = qw( 2 Null 1);

print "Using Pointers\n";

@nodes = qw (finger:Null  whois:Null  who:Null);
for ($i = 0; $i <= $#nodes; $i++)
  { $ptr = \$nodes[$i];
    @data = split(/:/,$$ptr);
    print "Before:  $ptr  @data ";
    $data[1] = $links[$i];
    print "->  @data \n";
    $$ptr = join ':',@data;
  }

print "\n\n";
Using Pointers
Before: SCALAR(0x80d2168)     finger Null   ->   finger 2
Before: SCALAR(0x80d2174)     whois Null   ->   whois Null
Before: SCALAR(0x80d2180)     who Null   ->   who 1

print "@nodes";
print "\n\n";

finger:2     whois:Null     who:1

print "Traversing list:\n";

$next = 0;
while ($next !~ "Null")
  {@data = split(":",$nodes[$next]);
   print $data[0], "\n";
   $next = $data[1];
  }


print "\n\n";

Traversing list:
finger
who
whois
## Method #3 - Using a Hash

print "Using a Hash\n";

# Initializing a hash using the "correspond" operator to make easy reading

%hash = ( 
          "man" =>  "Get UNIX Help:more",
          "cat" => "Display Files:Null",
          "more"=> "Page Through Files:cat");

print "Traversing list:\n";
$next = "man";
while ($next !~ "Null")
  { @data = split(/:/, $hash{$next});
    print "$next  $data[0] \n";
    $next = $data[1];
  }

 print "\n\n";
 
Using a Hash
Traversing list:
man     Get UNIX Help
more     Page Through Files
cat     Display Files
The actual program: ex8.pl
The output: ex8.out
dhyatt@thor.tjhsst.edu
