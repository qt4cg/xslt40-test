<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- A for-each result mixing an array-member JNode with an atomic item raises XTTE4060. -->
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a" as="array(*)">
      <xsl:array for-each="1">
        <xsl:array-member select="'A'"/>
        <xsl:sequence select="'B'"/>
      </xsl:array>
    </xsl:variable>
    <out><xsl:value-of select="string-join($a?* ! string(.),'|')"/></out>
  </xsl:template>
</xsl:stylesheet>
