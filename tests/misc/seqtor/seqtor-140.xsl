<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://function"
    exclude-result-prefixes="xs f"    
    version="4.0">
    
    
    <xsl:template match="/" name="xsl:initial-template">
        <!--
            Use namespace declarations within xsl:select
        -->
        <out>
           <xsl:select>
               declare namespace z = "http://function";
               z:data(42)
           </xsl:select> 
        </out>
    </xsl:template>
    
    <xsl:function name="f:data" as="item()+">
        <xsl:param name="n"/>
        <xsl:select>$n + 1</xsl:select>
    </xsl:function>
    
</xsl:stylesheet>