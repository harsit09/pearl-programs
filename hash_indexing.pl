my %capitals = (  
    "India"  => "New Delhi",  
    "South Korea" => "Seoul",  
    "USA"  => "Washington, D.C.",  
    "Australia"  => "Canberra"  
);  
# LOOP THROUGH IT  
while (($key, $value) = each(%capitals)){  
     print $key.", ".$value."\n";  
}  
