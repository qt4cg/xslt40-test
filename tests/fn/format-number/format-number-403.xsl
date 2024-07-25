<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" expand-text="yes">

  <xsl:decimal-format decimal-separator="," grouping-separator="." percent="%:pc"/>

  <xsl:template name="xsl:initial-template">
    <out>
      <a>{format-number(0.05, "#0%")}</a>
      <b>{format-number(0.93, "#0%")}</b>
    </out>
  </xsl:template>

</xsl:stylesheet>
