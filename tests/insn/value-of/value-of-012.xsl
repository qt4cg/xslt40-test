<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:param name="p" select="true()"/>
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:value-of cdata="{$p}">===</xsl:value-of>
         <xsl:value-of cdata="{not($p)}">###</xsl:value-of>
      </out>
   </xsl:template>
 
</xsl:transform>