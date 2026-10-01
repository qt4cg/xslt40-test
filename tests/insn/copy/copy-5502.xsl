<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy applied to a JNode wrapping a sequence -->

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="in" select="jtree({'X':(), 'Y':'a', 'Z':('b','c')})"/>
    <out>
      <xsl:for-each select="$in/*">
        <xsl:variable name="temp" as="item()*">
          <xsl:copy>
            <xsl:sequence select="jkey(.) || jvalue(.)"/>
          </xsl:copy>
        </xsl:variable>
        <in val="{position()}:{$temp}"/>
      </xsl:for-each>
    </out>
  </xsl:template>



</xsl:stylesheet>
