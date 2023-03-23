<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="xs array" version="4.0" expand-text="true">
  
  
    
    <xsl:template name="xsl:initial-template">
      <xsl:variable name="input-1" select="[1, (1,2), (1,2,3)]"/>
      <xsl:variable name="input-2" select="[3, (3,4), (3,4,5)]"/>
      <xsl:array use="?value">
        <xsl:perform-sort select="array:members($input-1), array:members($input-2)">
          <xsl:sort select="count(?value)"/>
        </xsl:perform-sort>
      </xsl:array>  
    </xsl:template>
    
</xsl:stylesheet>