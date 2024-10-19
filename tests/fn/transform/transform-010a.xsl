<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template as="element(out)" name="xsl:initial-template">
        <out>
            <xsl:assert test="current-date() lt xs:date('1900-01-01')"/>
        </out>
    </xsl:template>
</xsl:stylesheet>