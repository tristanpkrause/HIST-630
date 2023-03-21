xquery version "3.1";

(:let $persName1:= ("Shinpei Goto") 
let $persName2:= ("Gentaro Kodama") 
let $persName3:= ("Kenjiro Den")

let $join-name:= function ($persName1 as xs:string, $persName2 as xs:string, $persName3 as xs:string)
as xs:string
{fn:concat($persName1,", ", $persName2,", ", "and ", $persName3)
}

return $join-name ($persName1, $persName2, $persName3):)

declare function local:construct-english-list(
    $list as xs:string*) as xs:string
    {
    fn:concat(fn:string-join(fn:subsequence($list, 1, 2), ", and ", fn:subsequence($list, 3)))};

let $construct-english-list :=

return $construct-english-list($names)