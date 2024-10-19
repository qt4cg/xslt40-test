<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:variable name="msg" as="xs:string" select="."/>
    <xsl:template name="xsl:initial-template">
        <inner>
            <xsl:message select="$msg"/>
        </inner>
    </xsl:template>
</xsl:stylesheet>