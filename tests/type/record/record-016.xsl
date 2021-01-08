<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   exclude-result-prefixes="xs"
   expand-text="yes"
>

  <!-- Dynamic lookup on a non-field in a record succeeds -->
  
  <xsl:variable name="ZERO" as="record(r as xs:double, i as xs:double)" select="map{'i':0.0e0, 'r':0.0e0}"/>
  
 
  
  <xsl:template name="xsl:initial-template">
    <result>{empty($ZERO('xyz'))}</result>
  </xsl:template>  

</xsl:stylesheet>
