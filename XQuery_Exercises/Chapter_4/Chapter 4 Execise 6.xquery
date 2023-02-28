xquery version "3.1";

declare context item :=document {

<name>
    <forname>Tristan</forname>
    <surname>Krause</surname>
</name>
} ;

/name/surname/fn:contains(., "K")