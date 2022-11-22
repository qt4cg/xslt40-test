<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
   exclude-result-prefixes="xs math " version="4.0" expand-text="true">
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="cities" as="element(city)*">
      <xsl:for-each select="json-doc('city_list.json')?*">
         <city id="{?_id}">
           <name>{?name}</name>
           <country>{?country}</country>
         </city>
      </xsl:for-each>
    </xsl:variable>
    <out>{$cities[name="Moskva"]/country}</out>
  </xsl:template>
  
</xsl:stylesheet>