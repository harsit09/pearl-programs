Using a Hash

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
