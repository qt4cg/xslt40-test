<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- Built-in recursive shallow copy applied to a JSON tree -->
  
  <xsl:mode on-no-match="shallow-copy"/>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="in" select="json-doc('books.json')"/>
    <xsl:variable name="out" as="item()*">
      <xsl:apply-templates select="jtree($in)"/>
    </xsl:variable>
    <out>
      <xsl:if test="deep-equal($in, jvalue($out), {'debug':true()})" 
        then="'OK'"
        else="serialize($out, {'method':'json'})"/>
    </out>
  </xsl:template>



</xsl:stylesheet>
