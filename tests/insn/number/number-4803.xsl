<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
version="3.0">

    <!-- Use ordinal="%spellout" as suggested in a note in the xsl:number specification -->

    <xsl:template name="xsl:initial-template">
        <out>
            <o><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-ordinal"/></o>
            <os><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-ordinal-s"/></os>
            <or><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-ordinal-r"/></or>
            <on><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-ordinal-n"/></on>
            <c><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal"/></c>
            <cs><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-s"/></cs>
            <cr><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-r"/></cr>
            <cn><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-n"/></cn>
            <e><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-masculine"/></e>
            <f><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-feminine"/></f>
            <f><xsl:number value="120" format="w" lang="de-DE" ordinal="%spellout-cardinal-neuter"/></f>
        </out>
    </xsl:template>
</xsl:stylesheet>