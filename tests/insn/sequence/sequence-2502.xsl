<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <!-- Purpose: xsl:sequence with @as attribute, statically detected type error -->
   
   <xsl:variable name="doc">
      <a>1</a>
      <b>2</b>
   </xsl:variable>

   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:sequence as="xs:integer+">
            <xsl:apply-templates select="$doc/*"/>
         </xsl:sequence>
      </out>
   </xsl:template>
   
   <xsl:template match="a">
      <xsl:sequence select="10"/>
   </xsl:template>
   
   <xsl:template match="b">
      <xsl:sequence select="current-date()"/>
   </xsl:template>
</xsl:transform>
