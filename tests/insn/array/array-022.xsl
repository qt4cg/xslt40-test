<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:array="http://www.w3.org/2005/xpath-functions/array" 
  exclude-result-prefixes="xs array" version="3.0" expand-text="true">
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="cities" as="element(city)*">
      <xsl:for-each select="array:members(json-doc('../../strm/docs/city-list.json'))">
         <xsl:variable name="city" select="?value"/>
         <city id="{$city?_id}">
           <name>{$city?name}</name>
           <country>{$city?country}</country>
         </city>
      </xsl:for-each>
    </xsl:variable>
    <out>{$cities[name="Moskva"]/country}</out>
  </xsl:template>
  
</xsl:stylesheet>