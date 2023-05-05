xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare variable $doc := tei:TEI;

declare function local:transform($nodes as node()*) {
    for $node in $nodes
    return
        typeswitch ($node)
            case text() return $node
            case element (tei:TEI) return 
                <html xmlns="http://www.w3.org/1999/xhtml">{local:transform($node/node())}</html>
            case element (tei:teiHeader) return 
                <head>
                    {local:transform($node/node())}
                    <link rel="stylesheet" href="./CSS/SeverusLetters.css"/>
                    <meta charset="UTF-8"/>
                    <meta name="viewport" content="width=device-width" initial-scale="1.0"/>
                </head>
            case element (tei:fileDesc) return <title>{local:transform($node/tei:titleStmt/tei:title[1]/node())}</title>
            case element (tei:text) return <body>{local:transform($node/tei:body/node())}</body>
            case element (tei:listPerson) return <div><h1>Persons</h1>{local:transform($node/node())}</div>
            case element (tei:listPlace) return <div><h1>Places</h1>{local:transform($node/node())}</div>
            case element (tei:person) return <div><h2 class="namedEntity"><a id="{$node/@xml:id}">{local:transform($node/tei:persName/node())}</a></h2>{local:transform($node/node())}</div>
            case element (tei:place) return <div><h2 class="namedEntity"><a id="{$node/@xml:id}">{local:transform($node//node())}</a></h2>{local:transform($node/node())}</div>
            case element (tei:nationality) return <p>Nationality: {local:transform($node/node()) }</p>
            case element (tei:state)  return <p>Rank: {local:transform($node/tei:desc/node())}</p>
            case element (tei:idno) return <p>Serial Number: {local:transform($node/node()) }</p>
            default return ()
};

local:transform($doc)