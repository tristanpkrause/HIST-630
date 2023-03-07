xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";
delcare variable $title := ("Harry Potter");

<tei:title>
    { fn:concat($title, ": ", "And the Sorcerer's Stone") }
</tei:title>

