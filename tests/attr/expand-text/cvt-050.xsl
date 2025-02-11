<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" expand-text="yes" version="3.0">
    <xsl:template match="/" name="xsl:initial-template">
        <out>
            <xsl:variable name="x" select="year-from-date(current-date())"/>
            {$x gt 2000}
        </out>
    </xsl:template>
</xsl:stylesheet>
