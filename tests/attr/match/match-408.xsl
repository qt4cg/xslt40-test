<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" expand-text="yes">


  <xsl:variable name="nodes" as="item()" select="{'x':1, 'y':2}"/>


  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$nodes/child::*"/></out>
  </xsl:template>
  
  <xsl:template match="x" priority="20">
    <JNODE/>
  </xsl:template>

  <xsl:template match=".">
    <DOT/>
  </xsl:template>
  
  <xsl:mode warning-on-multiple-match="no"/>


</xsl:transform>
