<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
version="3.0">

    <!-- Use ordinal="%spellout" as suggested in a note in the xsl:number specification -->

    <xsl:template name="xsl:initial-template">
        <out>
            <a><xsl:number value="120" format="w" lang="en" ordinal="%spellout-ordinal"/></a>
            <b><xsl:number value="120" format="w" lang="en" ordinal="%spellout-ordinal-verbose"/></b>
            <c><xsl:number value="120" format="w" lang="en" ordinal="%spellout-cardinal"/></c>
            <d><xsl:number value="120" format="w" lang="en" ordinal="%spellout-cardinal-verbose"/></d>
        </out>
    </xsl:template>
</xsl:stylesheet>