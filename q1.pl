On unix/linux machines, the file /etc/passwd contains a list of all the users on a system. Each line looks like:
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:
daemon:x:2:2:daemon:/sbin:
nobody:x:99:99:Nobody:/:
Each line contains a user name, password (all x here), user id, group id, Name, home directory, and shell. The fields are separated by colons.
Write a program that prints out the usernames where the user id is less than 100
Print the usernames that are less than 100, sorted by username.
Print the sum of the group ids
Write a program that generates a passwd-style file. You can list the usernames in your program. 


$$ answer is as follows
#!/usr/athena/bin/perl

use strict;
use warnings;

my @lines = `cat /etc/passwd`;
foreach my $line (@lines) {
  my @fields = split(':',$line);
  if ($fields[2] < 100) {
    print "$fields[0]\n";
  }
}
#!/usr/athena/bin/perl

use strict;
use warnings;

my @lines = `cat /etc/passwd`;
my @keep = ();
foreach my $line (@lines) {
  my @fields = split(':',$line);
  if ($fields[2] < 100) {
    push(@keep,$fields[0]);
  }
}
@keep = sort @keep;
print "@keep\n";
#!/usr/athena/bin/perl

use strict;
use warnings;

my $file = `cat /etc/passwd`;
my @lines = split("\n",$file);
my $sum = 0;
foreach my $line (@lines) {
  my @fields = split(':',$line);
  $sum += $fields[3];
}
print "Sum is $sum\n";
#!/usr/athena/bin/perl

use strict;
use warnings;

my @users = qw(alice bob joe);
my $uid = 100;
foreach (@users) {
  my @pwdentry = ($_,'x',$uid++,100,$_,"/home/$_","/bin/bash");
  print join(":",@pwdentry)."\n";
}
