<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">
<xsl:output method="xml"/>

<!-- test deep recursion. This is a tail-recursive variant of ntmp07 -->

  <xsl:template match="/">
	<xsl:element name="wrap" >
		<ext:reverse2 index="1000"/>
	</xsl:element>
  </xsl:template>

<xsl:template name="ext:reverse2">
<!-- this version is tail-recursive -->
   <xsl:param name="index" />
   <xsl:param name="curr" select="1"/>
    <xsl:value-of select="concat($curr,'|')" />
    <xsl:if test="$curr &lt;= $index">
        <ext:reverse2 index="$index" curr="$curr+1" />
    </xsl:if>
</xsl:template>

<xsl:template match="text()">
   <ext:reverse2 index="string-length(.)"/>
</xsl:template>
</xsl:stylesheet>
