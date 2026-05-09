<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://function"
    exclude-result-prefixes="xs f"    
    version="4.0">
    
    <xsl:variable name="glob" select="142"/>
    
    <xsl:template match="/" name="xsl:initial-template" xmlns:f="http://unused.com/">
        <!--
            Use namespace undeclarations within xsl:select
        -->
        <out>
           <xsl:select>
               declare namespace f = "";
               $f:glob
           </xsl:select> 
        </out>
    </xsl:template>
    
    
</xsl:stylesheet>