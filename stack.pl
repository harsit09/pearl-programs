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
//op
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
