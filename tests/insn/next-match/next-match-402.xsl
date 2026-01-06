<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="4.0"
   exclude-result-prefixes="#all">
<!-- Purpose: xsl:next-match with atomic type patterns with predicates -->

   <xsl:variable name="test" select="xs:short(17)"/>
   
   <xsl:template name="xsl:initial-template">
      <out><xsl:apply-templates select="$test"/></out>
   </xsl:template>
   
   <xsl:template match="~(xs:short)">0.46875:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:short)[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:short)[. lt 20]">0.5B:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:int)[. lt 25]">0.5C:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:int)[. lt 20]">0.5D:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:int)[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:int)">0.4375:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:anyAtomicType)[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:anyAtomicType)">-0.5:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:anyAtomicType)[. lt 20]">0.5E:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:decimal)">0:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:decimal)[. lt 20]">0.5F:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:decimal)[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(item())">-1:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(item())[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(item())[. lt 20]">0.5G:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:integer)">0.25:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:integer)[. lt 20]">0.5H:<xsl:next-match/></xsl:template>
   
   <xsl:template match="~(xs:integer)[. gt 20]">0.5X:<xsl:next-match/></xsl:template>
   
   
</xsl:transform>
