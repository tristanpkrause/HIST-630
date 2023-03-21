xquery version "3.1";

let $persName1:= ("Shinpei Goto") 
let $persName2:= ("Gentaro Kodama")
let $persName3:= ("Kenjiro Den")

let $join-name:= function ($persName1 as xs:string, $persName2as as xs:string, $persName3as as xs:string)
as xs:string
{fn:concat($persName1, $persName2, " and ", $persName3)
}

return $join-name ($persName1, $persName2, $persName3)