<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="4.0"
    expand-text="yes">
    
    <xsl:template name="main">
        <out>
            <xsl:sequence select="transform( map { 'stylesheet-location': 'transform-401.xsl',
                                                   'xslt-version': 4.0,
                                                   'initial-match-selection' : map{'x':1, 'y':2}})
                                                   ?output"/>
        </out>
    </xsl:template>
    
    <xsl:template match="~record(x, y)">
        <in>{?x + ?y}</in>
    </xsl:template>
    
</xsl:stylesheet>