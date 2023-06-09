<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <?spec xslt#analyze-string?>
  <!-- Use select attribute of xsl:[non-]matching-substring, and string templates -->
  
  <xsl:param name="re" select="'e'"/>
  <xsl:param name="in" select="'every'"/>
  
  <xsl:template match="/">
    <out>
      <xsl:analyze-string select="$in" regex="{$re}">
       <xsl:matching-substring select="`[{.}]`"/>
       <xsl:non-matching-substring select="."/>
      </xsl:analyze-string>
    </out>
  </xsl:template>

</xsl:stylesheet>