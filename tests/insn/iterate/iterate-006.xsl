<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">

<!-- Test of xsl:iterate; uses a parameter. Error, xsl:continue must be lexically enclosed -->

<xsl:output indent="yes"/>

<xsl:template match="/">
<out>
  <xsl:iterate select="//ITEM">
    <xsl:param name="basketCost" as="xs:decimal" select="0"/>
    <item cost="{$basketCost}"><xsl:copy-of select="TITLE"/></item>
    <xsl:call-template name="continues"/>
  </xsl:iterate>
</out>
</xsl:template>

<xsl:template name="continues">
    <xsl:next-iteration>
      <xsl:with-param name="basketCost" select="86.50"/>
    </xsl:next-iteration>
</xsl:template>

</xsl:stylesheet>