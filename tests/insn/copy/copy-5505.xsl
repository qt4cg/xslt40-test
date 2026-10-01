<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="#all">
  
  <!-- fn:copy applied recursively to JTree containing sequences -->
  
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
        <xsl:otherwise select="$in/item::* =!> recursive-copy() =!> jvalue()"/>
      </xsl:choose>
    </xsl:copy>
  </xsl:function>
  
  <xsl:function name="test">
    <xsl:param name="id" as="xs:string"/>
    <xsl:param name="in"/>
    <xsl:variable name="out" select="recursive-copy(jtree($in)) => jvalue()"/>
    <test id="{$id}" result="{if (deep-equal($in, $out)) 
                              then 'OK'
                              else serialize($out, {'method':'adaptive'})}"/> 
  </xsl:function>

  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:select>test("t1", ())</xsl:select>
      <xsl:select>test("t2", 1)</xsl:select>
      <xsl:select>test("t3", (1, 2))</xsl:select>
      <xsl:select>test("t4", [([1], [2])])</xsl:select>
      <xsl:select>test("t5", [([1], 2)])</xsl:select>
      <xsl:select>test("t6", [(), 1, (2, 3)])</xsl:select>
      <xsl:select>test("t7", ([4], [5]))</xsl:select>
      <xsl:select>test("t8", ([4], [(5, 6)]))</xsl:select>
    </out>
  </xsl:template>



</xsl:stylesheet>
