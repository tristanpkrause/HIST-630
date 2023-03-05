xquery version "3.1";

let $books := ("Abigail", "Claire", "Kristen", "Lindsey", "Margaret", "Patrick", "Regan", "Tristan")

for $nbook in $books

return fn:concat("hello my names is ", $name, "!")(  $name, eq "Tristan", "!")



