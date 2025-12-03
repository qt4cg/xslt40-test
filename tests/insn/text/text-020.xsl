<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   
   <xsl:output method="xml" normalization-form="NFC"/>
   
   <xsl:character-map name="m">
      <xsl:output-character character="@" string="-at-"/>
   </xsl:character-map>
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a>
            <xsl:text>A</xsl:text>
            <xsl:value-of select="char(778)"></xsl:value-of>
         </a>
         <b>
            <xsl:text cdata="yes">A</xsl:text>
            <xsl:value-of select="char(778)"></xsl:value-of>
         </b>
      </out>
   </xsl:template>
  
 
</xsl:transform>