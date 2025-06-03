<?spec xslt#stylesheet-functions?>
<xsl:stylesheet version="4.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 exclude-result-prefixes="xs"
>

<!-- Test function-available with () as second argument -->
  
  <xsl:param name="one" select="1"/>

 
  <xsl:template match="/">
    <out>
      <a><xsl:value-of select="function-available('contains', ())"/></a> 
      <b><xsl:value-of select="function-available('count', $one[current-date() lt xs:date('1900-01-01')])"/></b> 
    </out>
  </xsl:template>
  

    
</xsl:stylesheet>