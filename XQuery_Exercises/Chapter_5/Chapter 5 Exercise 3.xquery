xquery version "3.1";

let $names := ("Abigail", "Claire", "Kristen", "Lindsey", "Margaret", "Patrick", "Regan", "Tristan")

for $name in $names

return fn:concat("Hello my names is ", $name, "!")