<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" 
   exclude-result-prefixes="#all" version="4.0">
<!-- Purpose: PR1875, implicit passing of parameter by xsl:next-match -->

   <xsl:variable name="test">
      <data/>
   </xsl:variable>
   
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:apply-templates select="$test/data">
            <xsl:with-param name="P" select="42"/>
            <xsl:with-param name="Q" select="43"/>
            <xsl:with-param name="R" select="44"/>
         </xsl:apply-templates>
      </out>
   </xsl:template>
   
   <xsl:template match="data" priority="50">
      <xsl:param name="P"/>
      <xsl:attribute name="P" select="$P"/>
      <xsl:next-match version="3.0">
         <xsl:with-param name="R" select="91"/>
      </xsl:next-match>     
   </xsl:template>
   
   <xsl:template match="data" priority="49">
      <xsl:param name="Q"/>
      <xsl:attribute name="Q" select="$Q"/>
      <xsl:next-match version="3.0"/>     
   </xsl:template>
   
   <xsl:template match="data" priority="48">
      <xsl:param name="R"/>
      <xsl:attribute name="R" select="$R"/>
   </xsl:template>
   
 
   
</xsl:transform>
