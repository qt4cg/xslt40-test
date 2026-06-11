<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="err">

  <!-- A map can't be in the content of a constructed element, but the error
      is not caught, because it's an error in the element constructor, not in
      the map constructor. -->

  <xsl:param name="map" select="map{'x':1}"/>

  <xsl:template name="main">
    <out>
      <in>
        <xsl:try>
          <xsl:copy-of select="$map"/>
          <xsl:catch errors="*">Should not be caught</xsl:catch>
        </xsl:try>
      </in>
    </out>
  </xsl:template>

</xsl:stylesheet>
