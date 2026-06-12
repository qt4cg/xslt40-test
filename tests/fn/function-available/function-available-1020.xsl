<?spec xslt#stylesheet-functions?>
<xsl:stylesheet version="4.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:f="http://example.com/f"
 exclude-result-prefixes="xs"
>

<!-- Test function-available with xs:QName as first argument: both compile-time and run-time -->
  
  <xsl:param name="one" select="1"/>
  <xsl:param name="inc" select="'increment'"/>
  
  <xsl:function name="f:increment" as="xs:integer">
    <xsl:param name="x" as="xs:integer"/>
    <xsl:select>$x + 1</xsl:select>
  </xsl:function>

 
  <xsl:template match="/">
    <out>
      <a><xsl:value-of select="function-available(#fn:type-available, 1)"/></a> 
      <b><xsl:value-of select="function-available(#f:increment, $one)"/></b> 
      <c><xsl:value-of select="function-available(#xs:integer, $one)"/></c> 
      <d><xsl:value-of select="function-available(QName('http://example.com/f', 'increment'), $one)"/></d>
      <e><xsl:value-of select="function-available(#f:increment)"/></e> 
      <f><xsl:value-of select="function-available(QName('http://example.com/f', $inc))"/></f> 
    </out>
  </xsl:template>
  

    
</xsl:stylesheet>