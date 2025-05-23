<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <!-- PURPOSE: Test type hierarchy for subtypes of String. -->
<?spec xpath#id-predefined-types?>
<?spec xpath#id-instance-of?>
  
  <xsl:template match="/">
    <out>;
      <t><xsl:value-of select="xs:normalizedString(' x y z ') instance of xs:integer"/></t>;
      <t><xsl:value-of select="xs:language('en') instance of xs:Name"/></t>;
      <t><xsl:value-of select="xs:token('a nice cup of tea') instance of xs:ID"/></t>;      
      <t><xsl:value-of select="xs:Name('my:goodness') instance of xs:boolean "/></t>;                                       
      <t><xsl:value-of select="xs:NCName('fili-buster') instance of xs:NMTOKEN"/></t>;
      <t><xsl:value-of select="xs:ID('jam') instance of xs:IDREF"/></t>;
      <t><xsl:value-of select="xs:IDREF('honey') instance of xs:ID"/></t>;      
      <t><xsl:value-of select="xs:ENTITY('stupid') instance of xs:ID"/></t>;  
      <t><xsl:value-of select="xs:NMTOKEN('...') instance of xs:Name"/></t>;  
    </out> 
  </xsl:template>
  

</xsl:stylesheet>