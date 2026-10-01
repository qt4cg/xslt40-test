<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="#all">
  
  <!-- implicit shallow-copy applied recursively to JTree containing sequences -->
  
  <xsl:mode on-no-match="shallow-copy"/>
  
  <xsl:function name="test">
    <xsl:param name="id" as="xs:string"/>
    <xsl:param name="in"/>
    <xsl:variable name="out" as="item()*">
      <xsl:apply-templates select="jtree($in)"/>
    </xsl:variable>
    <test id="{$id}" result="{if (deep-equal($in, jvalue($out))) 
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
