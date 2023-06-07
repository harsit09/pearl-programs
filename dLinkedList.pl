use strict;
use warnings;
use Data::Dumper;

my $head= undef; ## reference to first node
my $tail=\$head;  ## reference to the "next" field of the last node 
my $list;

open FILE, "<datastored.txt" or die $!;

# Creating a doubly linked list

while (<FILE>){
    my $node = {
                "data" => $_ , 
                "next" => undef,
                "prev" => undef,
            };
   
    $$tail=$node;   
    $node->{"prev"}= $tail;
    $tail = \$node->{"next"};
    
}


print Dumper $head;

&print_list($head);

sub print_list {
    $list=$_[0];
        while ($list) {
        print Dumper $list;
        print "$list->{data}";
        $list = $list->{next};        
        }

}
