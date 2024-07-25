<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" expand-text="yes">

  <xsl:decimal-format exponent-separator="e:×10^"/>

  <xsl:template name="xsl:initial-template">
    <out>
      <a>{format-number(0.005432, "9.999e99")}</a>
    </out>
  </xsl:template>

</xsl:stylesheet>
