<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">
<xsl:output method="xml"/>

<!-- test deep recursion. This version is not tail-recursive; ntmp08 is a variant that is -->

  <xsl:template match="/">
	<xsl:element name="wrap" >
		<ext:reverse index="500"/>
	</xsl:element>
  </xsl:template>

<xsl:template name="ext:reverse">
   <xsl:param name="index"/>
    <xsl:if test="$index != 0">
        <ext:reverse index="$index - 1" />
        <xsl:value-of select="concat($index,'|')" />
    </xsl:if>
</xsl:template>

<xsl:template match="text()">
   <ext:reverse index="string-length(.)"/>
</xsl:template>
</xsl:stylesheet>
