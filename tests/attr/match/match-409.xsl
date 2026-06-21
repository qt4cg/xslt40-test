<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:array = "http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="xs array" expand-text="yes">
  
  <!-- Test array patterns -->



  <xsl:template name="xsl:initial-template">
    <out>
      <one><xsl:apply-templates select="[1, 2, 3]"/></one>
      <two><xsl:apply-templates select="['a', ('b', 'c'), ()]"/></two>
      <three><xsl:apply-templates select="[[true(), false(), ()], [()]]"/></three>
      <four><xsl:apply-templates select="[-1, -2, -3]"/></four>
      <five><xsl:apply-templates select="array{1 to 7}"/></five>
      <six><xsl:apply-templates select="[{'a':1}, {'a':2}]"/></six>
    </out>
  </xsl:template>
  
  <xsl:template match="array(~xs:integer)">
    <xsl:select>1</xsl:select>
  </xsl:template>
  
  <xsl:template match="array(~xs:string*)">
    <xsl:select>2</xsl:select>
  </xsl:template>

  <xsl:template match="array(array(~xs:boolean?))">
    <xsl:select>3</xsl:select>
  </xsl:template>
  
  <xsl:template match="array(~xs:integer[. lt 0])">
    <xsl:select>4</xsl:select>
  </xsl:template>
  
  <xsl:template match="array(~xs:integer)[array:size(.) = 7]">
    <xsl:select>5</xsl:select>
  </xsl:template>
  
  <xsl:template match="array({'a':~xs:integer})">
    <xsl:select>6</xsl:select>
  </xsl:template>
  

</xsl:transform>
