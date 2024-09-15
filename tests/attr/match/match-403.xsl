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
    <out><xsl:apply-templates select="$nodes/self::x/a"/></out>
  </xsl:template>

  <xsl:template match="element(*)">
    <STAR/>
  </xsl:template>
  
  <xsl:template match="element(a)">
    <A>
      <xsl:next-match/>
    </A>
  </xsl:template>

  <xsl:template match="element(a|b)">
    <AB>
      <xsl:next-match/>
    </AB>
  </xsl:template>
  
  <xsl:template match="element(a|b|c)">
    <ABC>
      <xsl:next-match/>
    </ABC>
  </xsl:template>
  
 
  <xsl:mode warning-on-multiple-match="no"/>


</xsl:transform>
