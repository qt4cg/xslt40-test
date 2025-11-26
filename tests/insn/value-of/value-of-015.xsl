<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:variable name="x">
            <xsl:value-of>#</xsl:value-of>
            <xsl:value-of cdata="yes">===</xsl:value-of>
            <xsl:value-of>#</xsl:value-of>
         </xsl:variable>
         <xsl:value-of select="$x"/>
      </out>
   </xsl:template>
 
</xsl:transform>