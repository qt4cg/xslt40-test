<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://function"
    exclude-result-prefixes="xs f"    
    version="4.0">
    
    <xsl:variable name="g:glob" xmlns:g="http://variable.com/">
        <doc>
            <chap xmlns="http://element1.com/">one</chap>
            <chap xmlns="http://element2.com/">two</chap>
        </doc>
    </xsl:variable>
        
    
    <xsl:template match="/" name="xsl:initial-template" xmlns:f="http://unused.com/">
        <!--
            Use default element namespace declarations within xsl:select
        -->
        <out>
           <xsl:select>
               declare default element namespace "##any";
               declare namespace v="http://variable.com/";
               count($v:glob//chap)
           </xsl:select> 
        </out>
    </xsl:template>
    
    
</xsl:stylesheet>