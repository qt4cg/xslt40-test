<xsl:map xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:map-entry key="'type'" select="'person'"/>
  <xsl:map-entry key="'first'" select="?name"/>
  <xsl:map-entry key="'age'" select="?age"/>
</xsl:map>