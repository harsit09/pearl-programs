
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
