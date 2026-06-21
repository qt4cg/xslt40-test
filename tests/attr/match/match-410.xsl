<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:array = "http://www.w3.org/2005/xpath-functions/array"
  xmlns:map = "http://www.w3.org/2005/xpath-functions/map"
  exclude-result-prefixes="xs array" expand-text="yes">
  
  <!-- Test map patterns -->



  <xsl:template name="xsl:initial-template">
    <out>
      <one><xsl:apply-templates select="{'x':1, 'y':2, 'z':3}"/></one>
      <two><xsl:apply-templates select="{'x':1, 'y':2, 'z':3, 'w':4}"/></two>
      <three><xsl:apply-templates select="{-1: 'a', -2: 'b', -3: ()}"/></three>
      <four><xsl:apply-templates select="{true(): 'x', false(): 'y'}"/></four>
      <five><xsl:apply-templates select="{}"/></five>
      <six><xsl:apply-templates select="{'a':1}"/></six>
      <seven><xsl:apply-templates select="{'a':[1,2,3]}"/></seven>
    </out>
  </xsl:template>
  
  <xsl:template match="{'x':~xs:integer, 'y':~xs:integer, 'z':~xs:integer[.=3]}" priority="20">
    <xsl:select>1</xsl:select>
  </xsl:template>
  
  <xsl:template match="{'x':~xs:integer, 'y':~xs:integer, 'z':~xs:integer[.=3], *}" priority="10">
    <xsl:select>2</xsl:select>
  </xsl:template>
  
  <xsl:template match="{-1:~xs:string, -2:~xs:string, -3:~xs:string?}" priority="10">
    <xsl:select>3</xsl:select>
  </xsl:template>

  <xsl:template match="{true(), false()}[map:size(.) = 2]" priority="10">
    <xsl:select>4</xsl:select>
  </xsl:template>
  
  <xsl:template match="map{}" priority="10">
    <xsl:select>5</xsl:select>
  </xsl:template>
  
  <xsl:template match="map{*}" priority="5">
    <xsl:select>6</xsl:select>
  </xsl:template>
  
  <xsl:template match="map{'a': array(~xs:integer)}" priority="10">
    <xsl:select>7</xsl:select>
  </xsl:template>
  

</xsl:transform>
