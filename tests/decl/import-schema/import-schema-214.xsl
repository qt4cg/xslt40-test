<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:alpha="http://alpha.com/"
xmlns:beta="http://beta.com/"
default-validation="preserve">

  <!-- PURPOSE: 4.0 allows multiple schemas. -->

  <xsl:import-schema role="alpha">
    <xs:schema targetNamespace="http://alpha.com/" xmlns:α="http://alpha.com/">
      <xs:element name="a" type="α:type"/>
      <xs:simpleType name="type">
        <xs:restriction base="xs:string">
          <xs:pattern value="[A-Z][A-Z][A-Z]"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema role="beta">
    <xs:schema targetNamespace="http://beta.com/" xmlns:β="http://beta.com/">
      <xs:element name="b" type="β:type"/>
      <xs:simpleType name="type">
        <xs:restriction base="xs:string">
          <xs:pattern value="[a-z][a-z][a-z]"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
      

  <xsl:template name="xsl:initial-template">
    <out>
      <a xsl:schema-role="alpha">
        <xsl:element name="alpha:a" type="Q{http://alpha.com/}type">XYZ</xsl:element>
      </a>
      <b xsl:schema-role="beta">
        <!-- Invalid -->
        <xsl:element name="beta:b" type="Q{http://beta.com/}type">wxyz</xsl:element>
      </b>
    </out>
  </xsl:template>

</xsl:stylesheet>