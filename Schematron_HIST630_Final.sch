<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
   <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
   <sch:pattern>
       
    <!--<elementSpec ident="persName" module="namesdates" mode="change">
        <content>
            <textNode/>
        </content>
        <constraintSpec ident="persName" scheme="schematron">
            <constraint>-->
                <sch:rule context="tei:persName/@ref">
                    <sch:let name="standoff" value="doc('https://raw.githubusercontent.com/tristanpkrause/HIST-630/main/Standoff_Markup_Leutesdorf_Forest_Investigation.xml')"/>      
                    <sch:let name="personIDs" value="$standoff//tei:listPerson/tei:person/@xml:id"/>
                    <sch:let name="personRefValues" value="for $i in $personIDs return concat('#', $i)"/>
                    <sch:let name="error" value="."/>
                    <sch:assert test=". = $personRefValues"
                        ><sch:value-of select="$error"/> will bring doom. Seek shelter immediately and pray to your preferred God(s). Acceptable values are: <sch:value-of select="string-join ($personIDs, ', ')"/>
                    </sch:assert>
                </sch:rule>
         <!--   </constraint>
        </constraintSpec>-->
        <!--<attList>
        <attDef ident="ref" mode="change" usage="req"/>   
      </attList>-->
    <!--</elementSpec>-->
    
    <!--<elementSpec ident="placeName" module="namesdates" mode="change">
        <content>
            <textNode/>
        </content>
        <constraintSpec ident="placeName" scheme="schematron">
            <constraint>-->
                <sch:rule context="tei:placeName/@ref">
                    <sch:let name="standoff" value="doc('https://raw.githubusercontent.com/tristanpkrause/HIST-630/main/Standoff_Markup_Leutesdorf_Forest_Investigation.xml')"/>      
                    <sch:let name="placeIDs" value="$standoff//tei:listPlace/tei:place/@xml:id"/>
                    <sch:let name="placeRefValues" value="for $i in $placeIDs return concat('#', $i)"/>
                    <sch:let name="error" value="."/>
                    <sch:assert test=". = $placeRefValues"
                        ><sch:value-of select="$error"/> will summon Uhr, Scion of Darkness. Acceptable values are:
                        <sch:value-of select="string-join ($placeIDs, ', ')"/>
                    </sch:assert>
                </sch:rule>
          <!--  </constraint>
        </constraintSpec>
        <attList>
            <attDef ident="ref" mode="change" usage="req"/>
        </attList>
    </elementSpec>-->
  </sch:pattern>
</sch:schema>