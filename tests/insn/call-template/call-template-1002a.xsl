<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="xml"/>

<!-- test deep recursion. This is a tail-recursive variant of ntmp07 -->
   
   <xsl:variable name="gubbins" as="element()*">
       <xsl:for-each select="1 to 10000">
          <e att="{. mod 100}"/>
       </xsl:for-each>
   </xsl:variable>

  <xsl:template match="/">
	<xsl:element name="wrap" >
		<xsl:call-template name="reverse2" >
		  <xsl:with-param name="index" select="1000"/>
		</xsl:call-template>  
	</xsl:element>
  </xsl:template>

<xsl:template name="reverse2">
<!-- this version is tail-recursive -->
   <xsl:param name="index" />
   <xsl:param name="curr" select="1"/>
   <xsl:param name="lazy" select="()"/>
    <xsl:value-of select="concat($curr,'|')" />
    <xsl:variable name="lazy" select="$gubbins[@att > $curr mod 200] | $lazy"/>
    <xsl:if test="$curr &lt;= $index">
        <xsl:call-template name="reverse2">
           <xsl:with-param name="index" select="$index" />
           <xsl:with-param name="curr" select="$curr+1" />
           <xsl:with-param name="lazy" select="$lazy" />
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template match="text()">
   <xsl:call-template name="reverse2">
      <xsl:with-param name="index" select="string-length(.)"/>
   </xsl:call-template>
</xsl:template>
</xsl:stylesheet>
