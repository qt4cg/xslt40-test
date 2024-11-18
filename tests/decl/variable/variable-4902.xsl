<?xml version="1.0"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- In 4.0 a variable can be referenced within its own declaration,
        but trivial circularities are still an error -->
  

  <xsl:variable name="v" select="$v + 1"/>
  
  <xsl:template name="xsl:initial-template">
    <out result="{$v}"/>
  </xsl:template>

</xsl:stylesheet>
