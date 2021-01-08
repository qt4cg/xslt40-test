<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:foo="http://saxon.sf.net/foo"
  exclude-result-prefixes="xs foo"
  expand-text="yes"
  >
  
  <xsl:variable name="x" as="item()">
    <foo:bar/>
  </xsl:variable>
  
  <xsl:template name="xsl:initial-template">
    <out>{$x instance of element(foo:*)}</out>
  </xsl:template>  
  
</xsl:stylesheet>
