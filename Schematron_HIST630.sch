<!--<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <!-\-<sch:pattern>
        <sch:rule context="tei:note/@resp">
            <sch:assert test=". = '#unknown'">
                This @resp attribute must be "#unknown"
            </sch:assert>
        </sch:rule>
    </sch:pattern> 
    -\->
        
    <sch:pattern>
        <sch:rule context="tei:persName/@ref">
            <sch:assert test=". ='#place' pr .='#something'">
                This @ref atribute must include a #placexxx".
            </sch:assert>
    value="doc(URL for standoff)"  
 <!-\-   https://github.com/tristanpkrause/HIST-630/blob/main/Standoff_Markup_Leutesdorf_Forest_Investigation.xml-\->
            <sch: name="SO
            <sch: let name="error" value="."
        </sch:rule>
        
    </sch:pattern> -->
<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"> 
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="// tei:persName/@type">
            <sch:assert test=".='Drugan'"></sch:assert>
               <sch:rule context="// tei:placeName/@type">
           <!-- <sch:pattern>
                <sch:rule context="tei:persName/@ref">
                    <sch:assert test=". ='#place' pr .='#something'">
                        This @ref atribute must include a #placexxx".
                    </sch:assert>-->
        </sch:rule>
        <sch:rule context="// tei:name/@type">
            
        </sch:rule>
        <!--  <sch:let name="taxonomyAllURIs"-->
        <!--    value= "$ti//listURI[@type='taxonomyAllURIs']/uri""/> -->
        
        <!--  <sch:let name="STO"  value="doc ('")-->
    </sch:pattern>
</sch:schema>
    
    
    


