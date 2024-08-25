<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="one">
    <a/>
  </xsl:template>
  <xsl:template name="two">
    <two>
      <xsl:for-each-group select="1 to 10" group-by=". mod 2">
        <xsl:variable name="f" select="current-group#0"/>
        <zaq>
          <xsl:for-each-group select="'a', 'b', 'ab'" group-by="string-length(.)">
            <a value="{$f()}"/>
          </xsl:for-each-group>
        </zaq>
      </xsl:for-each-group>
    </two>
  </xsl:template>
</xsl:stylesheet>