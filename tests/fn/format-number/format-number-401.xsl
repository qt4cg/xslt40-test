<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" expand-text="yes">

  <xsl:decimal-format decimal-separator=".: POINT "/>

  <xsl:template name="xsl:initial-template">
    <out>
      <a>{format-number(42.3, "##0.0")}</a>
    </out>
  </xsl:template>

</xsl:stylesheet>
