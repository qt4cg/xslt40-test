<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-substring-after?>
  <!-- Purpose: Test of 'substring-after()' function with a variable reference 
       as the argument.  Only the second argument of the function is
       build by referencing a variable. -->

<xsl:variable name="variable1">cut this</xsl:variable>

<xsl:template match="doc">
 <out>
   <xsl:value-of select="substring-after('cut thissubstring after with variable',$variable1)"/>
 </out>
</xsl:template>
</xsl:stylesheet>