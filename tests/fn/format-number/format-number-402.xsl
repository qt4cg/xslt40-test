<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" expand-text="yes">

  <xsl:decimal-format decimal-separator="," grouping-separator="_: | "/>

  <xsl:template name="xsl:initial-template">
    <out>
      <a>{format-number(126_794_2.311, "#_###,000")}</a>
    </out>
  </xsl:template>

</xsl:stylesheet>
