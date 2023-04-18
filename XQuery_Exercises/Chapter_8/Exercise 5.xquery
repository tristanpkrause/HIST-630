xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $doc := 
<div xmlns="http://www.tei-c.org/ns/1.0">

        <lg>
            <l>My Bonnie lies over the ocean</l>
            <l>My Bonnie lies over the sea</l>
        </lg>
</div>;

declare function local:transform($nodes as node()*) {
    for $node in $nodes
    return
        typeswitch ($node)
            case text() 
                return 
                    $node
            case element(div) 
                return
                    <div>{local:transform($node/node()) }</div>
            case element(lg) 
                return
                    <ol>{local:transform($node/node()) }</ol>
            case element(l) 
                return
                    <li>{local:transform($node/node())}</li>
            default 
                return 
                    $node
};

local:transform($doc)