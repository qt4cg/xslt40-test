<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:alpha="http://alpha.com/"
xmlns:beta="http://beta.com/"
default-validation="preserve">

  <!-- PURPOSE: 4.0 allows multiple schemas. Role name must be an NCName -->

  <xsl:import-schema role="1alpha">
    <xs:schema targetNamespace="http://alpha.com/">
      <xs:element name="a" type="xs:integer"/>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema role="2beta">
    <xs:schema targetNamespace="http://beta.com/">
      <xs:element name="b" type="xs:date"/>
    </xs:schema>
  </xsl:import-schema>
      

  <xsl:template match="/">
    <out>
      <a xsl:schema-role="alpha" xsl:validation="strict">10</a> 
      <b xsl:schema-role="beta" xsl:validation="strict">2025-03-23</b> 
    </out>
  </xsl:template>

</xsl:stylesheet>