<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:saxon="http://saxon.sf.net/" 
  extension-element-prefixes="saxon" exclude-result-prefixes="xs math saxon" version="3.0" expand-text="true">
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="cities" as="element(city)*">
      <saxon:for-each-member select="json-doc('../../docs/city-list.json')" bind-to="city">
         <city id="{$city?_id}">
           <name>{$city?name}</name>
           <country>{$city?country}</country>
         </city>
      </saxon:for-each-member>
    </xsl:variable>
    <out>{$cities[name="Moskva"]/country}</out>
  </xsl:template>
  
</xsl:stylesheet>