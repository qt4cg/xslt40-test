<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="4.0">
<!-- Purpose: xsl:next-match with record type patterns -->

   <xsl:variable name="test" select="map{'red':1, 'green':2, 'blue':3}"/>
   
   <xsl:template name="xsl:initial-template">
      <out><xsl:apply-templates select="$test"/></out>
   </xsl:template>
   
   <xsl:template match="record(red, *)">3:<xsl:next-match/></xsl:template>
   
   <xsl:template match="record(red, green, *)">2:<xsl:next-match/></xsl:template>
   
   <xsl:template match="record(red, green, blue, *)">1:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(item())">6:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(map(xs:string, xs:integer))">14:<xsl:next-match/></xsl:template>
   
   <xsl:template match="type(map(*))">5:<xsl:next-match/></xsl:template>
   

   
</xsl:transform>
