<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <xsl:item-type name="cx:complex" as="record(r as xs:double, i as xs:double, *)"/>
  
  <xsl:template name="xsl:initial-template">
    <out>
      <a>{map{"r":5.0e0, "i":0.0e0} instance of cx:complex}</a>
      <b>{map{"r":5, "i":0.0e0} instance of cx:complex}</b>
      <c>{map{"r":5.0e0, "x":0.0e0} instance of cx:complex}</c>
      <d>{map{"r":5.0e0, "i":0.0e0, "z": current-date()} instance of cx:complex}</d>
    </out>
  </xsl:template>  

</xsl:stylesheet>
