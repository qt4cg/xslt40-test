<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:v16="http://ns.example.com/val16/"
  version="3.0" 
  exclude-result-prefixes="#all">
  
  <xsl:param static="yes" name="VALIDATION" as="xs:string" required="yes"/>
  
  <xsl:import-schema schema-location="validation-16.xsd" namespace="http://ns.example.com/val16/"/>
  
  <!-- Known xsi:type, unknown element name with validation="strict" -->
  
  <xsl:variable name="var" as="element()">
    <v16:alternative-doc xsi:type="v16:docType"><v16:test id="ABC"/></v16:alternative-doc>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:copy-of select="$var" _validation="{$VALIDATION}"/>
  </xsl:template>

</xsl:stylesheet>
