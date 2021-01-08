<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   exclude-result-prefixes="xs"
   expand-text="yes"
>

  <!-- Fields in map are not coerced to the required type -->
  
  <xsl:variable name="ZERO" as="record(r as xs:double, i as xs:double)" select="map{'i':0, 'r':0}"/>
  
 
  
  <xsl:template name="xsl:initial-template">
    <result>{empty($ZERO('i'))}</result>
  </xsl:template>  

</xsl:stylesheet>
