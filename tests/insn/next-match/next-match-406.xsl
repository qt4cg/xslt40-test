<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="4.0">
<!-- Purpose: xsl:next-match with atomic type patterns with predicates -->

   <xsl:variable name="test" select="xs:short(17)"/>
   
   <xsl:mode on-multiple-match="fail"/>
   
   <xsl:template name="xsl:initial-template">
      <out><xsl:apply-templates select="$test"/></out>
   </xsl:template>
   
   <xsl:template match="type(xs:short)">1:<xsl:next-match/></xsl:template>
   
   <xsl:template match="union(xs:boolean, xs:int, xs:short, xs:string)">5:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:int)">2:<xsl:next-match/></xsl:template>
   
   <xsl:template match="union(xs:short, xs:int)">3:<xsl:next-match/></xsl:template>
   
   <xsl:template match="union(xs:int, xs:short, xs:string)">4:<xsl:next-match/></xsl:template>  
   
   <xsl:template match="type(item())">6:<xsl:next-match/></xsl:template>
   
 
   
</xsl:transform>
