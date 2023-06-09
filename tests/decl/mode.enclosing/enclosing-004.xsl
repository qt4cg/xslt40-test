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
   
   <xsl:mode name="e" on-no-match="shallow-copy" warning-on-multiple-match="false">
      <xsl:template match="doc">
         <d2><xsl:apply-templates/></d2>
      </xsl:template>
   </xsl:mode>
   
   <xsl:template match="chapter" mode="#all" priority="100">
      <c2><xsl:apply-templates mode="e"/></c2>
   </xsl:template>

</xsl:transform>