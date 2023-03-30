<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

  <!-- current-output-uri() in a global variable -->

  <xsl:variable name="v" select="current-output-uri#0"/>
  
  <xsl:template name="main">
    <out uri="{$v()}"/>
  </xsl:template>

</xsl:stylesheet>
