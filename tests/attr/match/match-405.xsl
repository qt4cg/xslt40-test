<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" expand-text="yes">


  <xsl:variable name="nodes" as="element()*">
    <x id="1" xmlns="http://x.ns/">
      <a>23</a>
      <b>25</b> 
      <c>27</c> 
    </x>
  </xsl:variable>


  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$nodes/self::*:x/*:a"/></out>
  </xsl:template>
  
  <xsl:template match=".">
    <DOT p="-1"/>
  </xsl:template>

  <xsl:template match="element(*)">
    <STAR p="-0.5">
      <xsl:next-match/>
    </STAR>
  </xsl:template>
  
  <xsl:template match="element(*, xs:anyType)">
    <ANY p="-0.5">
      <xsl:next-match/>
    </ANY>
  </xsl:template>
  
  <xsl:template match="element(Q{http://x.ns/}a)">
    <A p="0">
      <xsl:next-match/>
    </A>
  </xsl:template>
  
  <xsl:template match="element(Q{http://x.ns/}a, xs:anyType)">
    <A.T p="0.25">
      <xsl:next-match/>
    </A.T>
  </xsl:template>

  <xsl:template match="element(Q{http://x.ns/}*)">
    <AB p="-0.25">
      <xsl:next-match/>
    </AB>
  </xsl:template>
  
  <xsl:template match="element(Q{http://x.ns/}*, xs:anyType)">
    <AB.T p="0.125">
      <xsl:next-match/>
    </AB.T>
  </xsl:template>
  
  <xsl:template match="element(*:a)">
    <ABC p="-0.25">
      <xsl:next-match/>
    </ABC>
  </xsl:template>
  
  <xsl:template match="element(*:a, xs:anyType)">
    <ABC.T p="0.125">
      <xsl:next-match/>
    </ABC.T>
  </xsl:template>
  
  <xsl:mode warning-on-multiple-match="no"/>


</xsl:transform>
