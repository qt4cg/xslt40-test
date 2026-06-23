<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" 
   exclude-result-prefixes="#all" version="4.0">
<!-- Purpose: PR1875, implicit passing of parameter by xsl:next-match -->

   
   <xsl:mode streamable="yes"/>
   
   <xsl:template match="/">
      <out>
         <xsl:apply-templates select="data">
            <xsl:with-param name="P" select="42"/>
            <xsl:with-param name="Q" select="43"/>
            <xsl:with-param name="R" select="44"/>
         </xsl:apply-templates>
      </out>
   </xsl:template>
   
   <xsl:template match="data" priority="50">
      <xsl:param name="P"/>
      <a P="{$P}">
         <xsl:next-match>
            <xsl:with-param name="R" select="91"/>
         </xsl:next-match>
      </a>
   </xsl:template>
   
   <xsl:template match="data" priority="49">
      <xsl:param name="Q"/>
      <b Q="{$Q}">
         <xsl:next-match/>
      </b>
   </xsl:template>
   
   <xsl:template match="data" priority="48">
      <xsl:param name="R"/>
      <c R="{$R}"/>
   </xsl:template>
   
 
   
</xsl:transform>
