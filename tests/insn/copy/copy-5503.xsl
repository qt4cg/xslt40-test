<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy applied recursively to a JSON tree -->
  
  <xsl:function name="recursive-copy" as="jnode(*)?">
    <xsl:param name="in" as="jnode(*)"/>
    <xsl:copy select="$in">
      <xsl:choose>
        <xsl:when test="jvalue($in) instance of map(*)">
          <xsl:for-each select="$in/*">
            <xsl:map-entry key="jkey(.)" select="recursive-copy(.)"/>
          </xsl:for-each>
        </xsl:when>
        <xsl:when test="jvalue($in) instance of array(*)">
          <xsl:for-each select="$in/*">
            <xsl:array-member select="recursive-copy(.)"/>
          </xsl:for-each>         
        </xsl:when>
        <xsl:when test="exists($in/*)">
          <xsl:for-each select="$in/*">
            <xsl:array-member select="recursive-copy(.)"/>
          </xsl:for-each>         
        </xsl:when>
        <xsl:otherwise select="jvalue($in)"/>
      </xsl:choose>
    </xsl:copy>
  </xsl:function>

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="in" select="json-doc('books.json')"/>
    <xsl:variable name="out" select="recursive-copy(jtree($in))"/>
    <out>
      <xsl:if test="deep-equal($in, $out)" 
        then="'OK'"
        else="serialize($out, {'method':'json'})"/>
    </out>
  </xsl:template>



</xsl:stylesheet>
