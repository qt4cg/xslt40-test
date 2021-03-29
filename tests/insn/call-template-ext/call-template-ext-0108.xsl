<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext"
  >

    <!-- Test with declared return type -->
  
    <xsl:template name="ext:t" as="xs:string">
      <xsl:param name="in" as="xs:string"/>
      <xsl:param name="count" as="xs:integer"/>
      <ext:t-private in="{$in}" count="{$count}"/>
    </xsl:template>
    
    <xsl:template name="ext:t-private" as="xs:string">
      <xsl:param name="in" as="xs:string"/>
      <xsl:param name="count" as="xs:integer"/>
      <xsl:sequence select="string-join((1 to $count)!$in, '')"/>
    </xsl:template>
    
    <xsl:template name="main">
      <out>
         <ext:t in="x" count="5"/>
      </out>
    </xsl:template>  
          
  </xsl:stylesheet>