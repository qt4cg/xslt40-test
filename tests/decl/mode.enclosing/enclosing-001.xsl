<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">
   
   <xsl:variable name="doc">
      <doc>
         <chapter nr="1">
            <para>One</para>
            <para>Two</para>
         </chapter>
         <chapter nr="2">
            <para>Three</para>
            <para>Four</para>
         </chapter>
      </doc>
   </xsl:variable>
   
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:apply-templates select="$doc/doc" mode="e"/>
      </out>
   </xsl:template>
   
   <xsl:mode name="e" on-no-match="deep-copy">
      <xsl:template match="doc">
         <doc2>
            <xsl:apply-templates select="chapter[@nr='1']"/>
         </doc2>
      </xsl:template>
      <xsl:template match="chapter">
         <c><xsl:apply-templates select="para"/></c>
      </xsl:template>
   </xsl:mode>

</xsl:transform>