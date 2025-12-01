<xsl:result-document method="json" indent="no" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:map-entry key="'fruit'" select="string(/doc/@fruit)"/> 
</xsl:result-document>