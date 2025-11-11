<?xml version="1.0"?> 

<?spec xslt#stylesheet-functions?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <!-- function using EQName in no namespace - OK in 4.0 -->

  <xsl:function name="Q{}count-elements">
    <xsl:param name="doc"/>
    <xsl:sequence select="count($doc//*)"/>
  </xsl:function>

  <xsl:template match="/">
    <out>
      <xsl:value-of select="count-elements(.)"/>
    </out>
  </xsl:template>

</xsl:stylesheet>
