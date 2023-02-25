<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:foo="http://saxon.sf.net/foo"
  exclude-result-prefixes="xs foo"
  expand-text="yes"
  >
  
  <xsl:variable name="x" as="item()">
    <e foo:bar="en"/>
  </xsl:variable>
  
  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$x/@*"/></out>
  </xsl:template>
  
  <xsl:mode warning-on-no-match="no" warning-on-multiple-match="no"/>

  <xsl:template match="attribute(foo:bar, xs:untypedAtomic)">
    <P0.25><xsl:next-match/></P0.25>
  </xsl:template>
  
  <xsl:template match="attribute(foo:*, xs:untypedAtomic)">
    <P0.125><xsl:next-match/></P0.125>
  </xsl:template>
  
  <xsl:template match="attribute(*:bar, xs:untypedAtomic)">
    <Q0.125><xsl:next-match/></Q0.125>
  </xsl:template>
  
  <xsl:template match="attribute(*, xs:untypedAtomic)">
    <P0><xsl:next-match/></P0>
  </xsl:template>
  
  <xsl:template match="attribute(foo:bar)">
    <Q0><xsl:next-match/></Q0>
  </xsl:template>
  
  <xsl:template match="attribute(foo:*)">
    <P-0.25><xsl:next-match/></P-0.25>
  </xsl:template>
  
  <xsl:template match="attribute(*:bar)">
    <Q-0.25><xsl:next-match/></Q-0.25>
  </xsl:template>
  
  <xsl:template match="attribute(*)">
    <P-0.5><xsl:next-match/></P-0.5>
  </xsl:template>
  
</xsl:stylesheet>
