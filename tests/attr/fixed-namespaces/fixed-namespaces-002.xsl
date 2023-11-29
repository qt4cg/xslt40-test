<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    fixed-namespaces="xs fn math map"
    expand-text="yes">
    
    <xsl:template name="main">
        <out value="{xs:integer(fn:round(math:pi()))}">{map:get(map{'a':1},'a')}</out>
    </xsl:template>
 
</xsl:stylesheet>
