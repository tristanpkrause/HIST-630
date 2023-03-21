xquery version "3.1";

delcare namespace tei="http://www.tei-c.org/ns/1.0";

delcare function: local:construct-english-list ($persName as xs:string, $forname as xs:string, $surname as xs:string?)
as elemt (tei:persName)

