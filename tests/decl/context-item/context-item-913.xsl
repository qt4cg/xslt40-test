<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

    <!-- Saxon bug 7123 -->
  
  <xsl:template name="xsl:initial-template">
    <xsl:context-item use="absent"/>
    <xsl:sequence select="child::element()"/>
  </xsl:template>
          
  </xsl:stylesheet>