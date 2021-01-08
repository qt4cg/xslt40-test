<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:foo="http://saxon.sf.net/foo"
  exclude-result-prefixes="xs foo"
  expand-text="yes"
  >
  
  <xsl:variable name="x" as="item()">
    <foo:bar xml:lang="en"/>
  </xsl:variable>
  
  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$x//@*"/></out>
  </xsl:template>  
  
  <xsl:template match="attribute(xml:*, xs:untypedAtomic)" as="attribute(*:lang)">
    <xsl:sequence select="."/>
  </xsl:template>
  
</xsl:stylesheet>
