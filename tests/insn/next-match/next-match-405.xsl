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
   
   <xsl:template match="type(xs:short)[. lt 20]">1t:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:int)">2:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:int)[. lt 20]">2t:<xsl:next-match/></xsl:template>
   
   <xsl:template match="union(xs:short, xs:int)">u:<xsl:next-match/></xsl:template>
   
   <xsl:template match="union(xs:int, xs:short)">ut:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:anyAtomicType)">5:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:anyAtomicType)[. lt 20]">5t:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:decimal)">4:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:decimal)[. lt 20]">4t:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(item())">6:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(item())[. lt 20]">6t:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:integer)">3:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(xs:integer)[. lt 20]">3t:<xsl:next-match/></xsl:template>
   
   
</xsl:transform>
