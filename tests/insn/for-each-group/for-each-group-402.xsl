<?spec xslt#grouping?>
<!-- break-when attribute -->

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">
  <xsl:template name="xsl:initial-template">
    <groups>
      <xsl:for-each-group select="100 to 200" break-when="sum($group) + $next gt 700">
        <group total="{sum(current-group())}"/>
      </xsl:for-each-group>
    </groups>
  </xsl:template>
</xsl:transform>