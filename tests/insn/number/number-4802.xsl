<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
version="3.0">

    <!-- Use ordinal="%spellout" as suggested in a note in the xsl:number specification -->

    <xsl:template name="xsl:initial-template">
        <out>
            <a><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-ordinal"/></a>
            <b><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-ordinal-masculine"/></b>
            <c><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-ordinal-feminine"/></c>
            <b2><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-ordinal-masculine-plural"/></b2>
            <c2><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-ordinal-feminine-plural"/></c2>
            <!--<d><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-cardinal"/></d>-->
            <e><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-cardinal-masculine"/></e>
            <f><xsl:number value="120" format="w" lang="fr-FR" ordinal="%spellout-cardinal-feminine"/></f>
        </out>
    </xsl:template>
</xsl:stylesheet>