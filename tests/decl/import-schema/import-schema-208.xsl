<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:alpha="http://alpha.com/"
xmlns:beta="http://beta.com/"
default-validation="preserve">

  <!-- PURPOSE: 4.0 allows multiple schemas. Error, schemas are incompatible -->

  <xsl:import-schema role="alpha">
    <xs:schema targetNamespace="http://alpha.com/">
      <xs:element name="a" type="xs:integer"/>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema role="beta">
    <xs:schema targetNamespace="http://alpha.com/">
      <xs:element name="a" type="xs:date"/>
    </xs:schema>
  </xsl:import-schema>
      

  <xsl:template name="xsl:initial-template">
    <out>
      <alpha:a xsl:schema-role="alpha" xsl:validation="strict">10</alpha:a> 
      <alpha:a xsl:schema-role="beta" xsl:validation="strict">2025-03-23</alpha:a> 
    </out>
  </xsl:template>

</xsl:stylesheet>