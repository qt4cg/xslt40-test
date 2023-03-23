<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
   exclude-result-prefixes="xs array" version="4.0" expand-text="true">
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:for-each select="array:members([1, (5,6), 10])">
         <in>{sum(?value)}</in>
      </xsl:for-each>
    </out>
  </xsl:template>
  
</xsl:stylesheet>