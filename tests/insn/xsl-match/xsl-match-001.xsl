<?xml version="1.0"?> 
<xsl:transform 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="4.0"
  expand-text="yes">
 
  <xsl:template name="t-001">
    <xsl:param name="p" as="element(*)"><elem/></xsl:param>
    <out>
      <one><xsl:match select="$p" pattern="elem"/></one>
      <two><xsl:match select="$p" pattern="mele"/></two>
    </out>
  </xsl:template>
  
  <xsl:template name="t-002">
    <out>
      <one><xsl:match select="()" pattern="elem"/></one>
    </out>
  </xsl:template>
  
  <xsl:template name="t-003">
    <xsl:variable name="v" as="element(*)*">
      <a/>
      <b/>
      <c/>
    </xsl:variable>
    <out>
      <one><xsl:match select="$v" pattern="*"/></one>
      <two><xsl:match select="$v" pattern="a"/></two>
    </out>
  </xsl:template>
  
  <xsl:template name="t-004">
    <xsl:variable name="v" as="element(*)*">
      <a/>
      <b/>
      <c/>
    </xsl:variable>
    <out>
      <xsl:for-each select="$v">
        <xsl:match pattern="a"/>
      </xsl:for-each>
    </out>
  </xsl:template>
  
  <xsl:template name="t-005">
    <xsl:variable name="v" as="element(*)*">
      <a x="1">1</a>
      <a x="1">2</a>
      <a x="1">3</a>
    </xsl:variable>
    <out>
      <xsl:for-each select="$v">
        <xsl:match pattern="a[@x=current()]"/>
      </xsl:for-each>
    </out>
  </xsl:template>
  
  <xsl:template name="t-006">
    <out>
      <one><xsl:match select="map{'a':1, 'b':2}" pattern="record(a, b)"/></one>
      <two><xsl:match select="map{'a':1, 'b':2}" pattern="record(a, c)"/></two>
    </out>
  </xsl:template>
  
  
</xsl:transform>
