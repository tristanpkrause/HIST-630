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
    /books/book[fn:contains(./title, "War")]
<books>
};