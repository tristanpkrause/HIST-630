xquery version "3.1";

declare context item := document;

for $book at $n in books/book

(:for $book in books/book:)

(:for $book in books/book [fn:contains(title, "Jewish")]:)
    (:where fn:contains($book/title, "Jewish"):)
    
    let $author := $book/author
    let $title := $book/title
    let $press := $book/publisher/press
    let $date := $book/date
    
    (:order by $author descending:)
return
    (:<bibl>
        { fn:concat($author, ".", $title, ". ", $press, ". ", $date)}
    </bibl>:)
    <bibl n="{$n}">
        { fn:concat($author, ".", $title, ". ", $press, ". ", $date)}
    </bibl>

