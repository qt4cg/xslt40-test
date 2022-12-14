<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" expand-text="yes">


  <xsl:variable name="nodes" as="element()*">
    <x id="1">
      <a>23</a>
      <b>25</b> 
      <c>27</c> 
    </x>
  </xsl:variable>


  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$nodes/self::x/*"/></out>
  </xsl:template>

  <xsl:template match="*">
    <xsl:copy-of select="."/>
  </xsl:template>
  
  <xsl:template match="a">
    <A>
      <xsl:value-of select="."/>
    </A>
  </xsl:template>

  <xsl:template match="child::(*:a|b)">
    <AB>
      <xsl:value-of select="."/>
    </AB>
  </xsl:template>
  
 


</xsl:transform>
