<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" id="shadow-009">

   <!-- Use namespace binding in shadow attribute (static AVT) -->
   
   <xsl:variable name="N" static="yes" select="'#x:local'"/>
   
   <xsl:template name="main">
      <out><xsl:value-of _select="declare namespace x = 'http://example.ns/'; namespace-uri-from-QName({$N})"/></out>
   </xsl:template>
   
</xsl:transform>
