xquery version "3.1";

declare context item := document;

for $book in books/book

    let $name := $book/author
    
return
    <greeting>
    {
    if ($name eq "Jan Gross") then
    fn:concat("Hallo ", $name, "!")
    
    else fn:concat("Hi there ", $name, "!")
        }
    </greeting>

