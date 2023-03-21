xquery version "3.1";

delcare namespace tei="http://www.tei-c.org/ns/1.0";

delcare function: local:construct-english-list ($persName as xs:string)
as element (tei:persName)
{
<persName xmnls="http://www.tei-c.org/ns/1.0">
    <forname>Shinpei</forname>
    <surname>Goto</surname>
</persName>
}

local:construct-english-list ($persName)