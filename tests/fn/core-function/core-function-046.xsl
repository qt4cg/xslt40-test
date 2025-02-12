<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-contains?>
  <!-- Purpose: Test of 'contains' function with a param reference 
       for all its arguments.-->

<xsl:param name="param1">This is a string</xsl:param>
<xsl:param name="param2">This</xsl:param>

<xsl:template match="doc">
 <out>
   <xsl:value-of select="contains($param1,$param2)"/>
 </out>
</xsl:template>
</xsl:stylesheet>