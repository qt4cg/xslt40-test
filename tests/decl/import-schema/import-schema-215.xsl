<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:alpha="http://alpha.com/"
xmlns:beta="http://beta.com/"
default-validation="preserve">

  <!-- PURPOSE: 4.0 allows multiple schemas. -->

  <xsl:import-schema role="α">
    <xs:schema targetNamespace="http://alpha.com/" xmlns:α="http://alpha.com/">
      <xs:element name="a" type="α:type"/>
      <xs:simpleType name="type">
        <xs:restriction base="xs:string">
          <xs:pattern value="[A-Z][A-Z][A-Z]"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema role="β">
    <xs:schema targetNamespace="http://beta.com/" xmlns:β="http://beta.com/">
      <xs:element name="b" type="β:type"/>
      <xs:simpleType name="type">
        <xs:restriction base="xs:string">
          <xs:pattern value="[a-z][a-z][a-z]"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
      

  <xsl:template name="xsl:initial-template" xmlns:α="http://alpha.com/" xmlns:β="http://beta.com/">
    <out>
      <a xsl:schema-role="α" data="{α:type('XYZ')}"/>
      <b xsl:schema-role="β" data="{β:type('xyz')}"/>
    </out>
  </xsl:template>

</xsl:stylesheet>