<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="4.0">
<!-- Purpose: xsl:next-match with atomic type patterns -->

   <xsl:variable name="test" select="xs:short(17)"/>
   
   <xsl:template name="xsl:initial-template">
      <out><xsl:apply-templates select="$test"/></out>
   </xsl:template>
   
   <xsl:template match="type(xs:short)">1<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:int)">2<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:anyAtomicType)">5<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:decimal)">4<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(item())">6:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:integer)">3<xsl:next-match/></xsl:template>
   
   
</xsl:transform>
