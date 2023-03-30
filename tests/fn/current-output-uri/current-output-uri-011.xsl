<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

  <!-- current-output-uri() initial value : variable must not be inlined -->
  
  <xsl:template name="main">
    <xsl:variable name="uri" select="current-output-uri()"/>
    <out>
      <xsl:result-document href="second/current-output-uri-011.xml">
        <second uri="{$uri}"/>
      </xsl:result-document>
    </out>
  </xsl:template>

</xsl:stylesheet>
