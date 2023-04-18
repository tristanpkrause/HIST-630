<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        
                <sch:rule context="tei:persName">
                    <sch:let name="standoff"
                        value="doc('https://raw.githubusercontent.com/tristanpkrause/HIST-630/main/Standoff_Markup_Leutesdorf_Forest_Investigation.xml')"/>      
                    <sch:let name="personIDs"
                        value="$standoff//person/@xml:id"/>
                    <sch:let name="error" value="."/>
                    <sch:assert
                        test="@ref = $personIDs"
                        ><sch:value-of select="$error"/> will bring doom. Seek shelter immediately and pray to your preferred God(s).Acceptable values are:
                        <sch:value-of select="personIDs"/>
                    </sch:assert>
                </sch:rule>
        <sch:rule context="tei:placeName">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/tristanpkrause/HIST-630/main/Standoff_Markup_Leutesdorf_Forest_Investigation.xml')"/>      
            <sch:let name="placeIDs"
                value="$standoff//place/@xml:id"/>
            <sch:let name="error" value="."/>
            <sch:assert
                test="@ref = $placeIDs"
                ><sch:value-of select="$error"/> will summon Uhr, Lord of Darkness.
                <sch:value-of select="placeIDs"/>
            </sch:assert>
        </sch:rule>
    </sch:pattern>     
</sch:schema>