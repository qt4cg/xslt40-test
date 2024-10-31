<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <!-- test simple use of XSLT 4.0 character-map() function -->

  <xsl:character-map name="map01">
    <xsl:output-character character="c" string="[C]"/>
    <xsl:output-character character="x" string="[X]"/>
  </xsl:character-map>
  
  <xsl:output method="xml" use-character-maps="map01"/>

  <xsl:template match="/">
    <xsl:variable name="m" select="character-map(QName('', 'map01'))"/>
    <out c="{$m?c}" x="{$m?x}"/>   
  </xsl:template>

</xsl:stylesheet>