xquery version "3.1";

declare context item := document;

for $book at $n in books/book
  
    let $year := $book/date/@year
    group by $year
    order by $year 
        
return
  
    <book published="{$year}">
        {$book/title}
    </book>
