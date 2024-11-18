<?xml version="1.0"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- In 4.0 a variable can be referenced within its own declaration -->
  

  <xsl:variable name="v" select="function($x){if ($x le 0) then 0 else $v($x - 1) + $x}"/>
  
  <xsl:template name="xsl:initial-template">
    <out result="{$v(5)}"/>
  </xsl:template>

</xsl:stylesheet>
