xquery version "3.1";

declare context item :=document {
<books>
    <book>
        <title>Primo Levi: The Matter of Life</title>
        <author>Berel Lang</author>
        <date year="2013">2013</date>
        <publisher>
            <city>New Haven</city>
            <press>Yale University Press</press>
        </publisher>
    </book>
    
    <book>
        <title>Hacking the Academy</title>
        <author>Daniel J. Cohen, et alt.</author>
        <date year="2013">2013</date>
        <publisher>
            <city>Ann Arbor</city>
            <press>University of Michigan Press</press>
        </publisher>
    </book>
    
    <book>
        <title>Neighbors: The Destruction of the Jewish Community in Jedwabne, Poland</title>
        <author>Jan Gross</author>
        <date year="2001">2001</date>
         <publisher>
            <city>Princeton</city>
            <press>Princeton University Press</press>
        </publisher>
    </book>
    
    <book>
        <title>The Liberation of the Camps: The End of the Holocaust and Its Aftermath</title>
        <author>Dan</author>
        <date year="2015">2015</date>
         <publisher>
            <city>New Haven</city>
            <press>Yale University Press</press>
        </publisher>
    </book>
    
    <book>
        <title>Ordinary Men: Reserve Police Battalion 101 and the Final Solution</title>
        <author>Christopher Browning</author>
        <date year="1992">1992</date>
         <publisher>
            <city>New York</city>
            <press>Harper</press>
        </publisher>
    </book>
    </books>
    } ;
    /books/book/fn:contains(./ title, "Holocaust")

