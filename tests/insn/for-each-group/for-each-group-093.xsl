<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  version="3.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:mf="http://example.com/mf"
  exclude-result-prefixes="#all"
  expand-text="yes">

  <xsl:variable name="data">
    <root>
      <item name="bbb" />
      <item name="ddd" />
      <item name="bbb" />
      <item name="aaa" />
      <item name="ccc" />
    </root>
  </xsl:variable>
  
  <xsl:function name="mf:group-and-sort" as="element(t)*">
    <xsl:param name="items" as="element(item)*"/>
    <xsl:param name="ordering" as="xs:string"/>
    <xsl:for-each-group select="$items" group-by="@name">
      <xsl:sort select="current-grouping-key()" order="{$ordering}"/>
      <t>{current-grouping-key()}</t>
    </xsl:for-each-group>
  </xsl:function>
  
  <xsl:output indent="yes"/>

  <xsl:template name="xsl:initial-template">
    <root>
      <xsl:for-each select="'descending', 'ascending'">
        <order>{.}</order>
        <xsl:sequence select="mf:group-and-sort($data/root/item, .)"/>
      </xsl:for-each>
    </root>
  </xsl:template>
  
</xsl:stylesheet>