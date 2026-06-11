<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="err">

  <!-- Catch a tree construction error -->

  <xsl:param name="map" select="map{'x':1}"/>

  <xsl:template name="main">
    <out>
      <xsl:try>
        <in>
          <xsl:copy-of select="$map"/>
        </in>
        <xsl:catch errors="*">Cannot output $map</xsl:catch>
      </xsl:try>
    </out>
  </xsl:template>

</xsl:stylesheet>
