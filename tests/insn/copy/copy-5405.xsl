<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy applied to a JNode wrapping a sequence of arrays and maps -->

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="in" select='[(), 0, (1,2), ({"a":99}, [1,2,3], {}, [])]'/>
    <xsl:variable name="jnodes" select="$in/*"/>
    <out>
      <xsl:for-each select="$jnodes">
        <xsl:variable name="cc" as="item()*">
          <xsl:copy>
            <xsl:select>serialize(., {'method': 'json'})</xsl:select>
          </xsl:copy>
        </xsl:variable>
        <in value="~{serialize($cc, {'method': 'json'})}~"/>
      </xsl:for-each>
    </out>
  </xsl:template>



</xsl:stylesheet>
