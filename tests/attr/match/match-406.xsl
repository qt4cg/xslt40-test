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

  <xsl:template match="element(*|*)">
    <STAR p="-0.5">
      <xsl:next-match/>
    </STAR>
  </xsl:template>
  
  <xsl:template match="element(p:*|*:a)" xmlns:p="http://x.ns/">
    <WILD p="-0.25">
      <xsl:next-match/>
    </WILD>
  </xsl:template>
  
  <xsl:template match="element(a|a)" xmlns:p="http://x.ns/" xpath-default-namespace="http://x.ns/">
    <A p="0">
      <xsl:next-match/>
    </A>
  </xsl:template>
  
  <xsl:mode warning-on-multiple-match="no"/>


</xsl:transform>
