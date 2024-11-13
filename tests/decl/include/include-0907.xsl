<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">


  <xsl:include href="include-0907a.xsl"/>
  
  <xsl:template match="a">
    <middle>
      <xsl:next-match/>
    </middle>
  </xsl:template>
  
  <xsl:include href="include-0907a.xsl"/>
  
  <xsl:variable name="a">
    <a/>
  </xsl:variable>
  
  <xsl:template name="xsl:initial-template">
    <out><xsl:apply-templates select="$a//a"/></out>
  </xsl:template>


</xsl:stylesheet>
