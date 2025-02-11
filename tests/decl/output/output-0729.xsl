<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">

<xsl:import-schema>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<xsd:element name="letterBody">
  <xsd:complexType mixed="true">
    <xsd:sequence>
      <xsd:element name="salutation">
        <xsd:complexType mixed="true">
          <xsd:sequence>
            <xsd:element name="name" type="xsd:string"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="quantity"    type="xsd:positiveInteger"/>
      <xsd:element name="productName" type="xsd:string"/>
      <xsd:element name="shipDate"    type="xsd:date" minOccurs="0"/>
    </xsd:sequence>
  </xsd:complexType>
</xsd:element>

</xsd:schema>
</xsl:import-schema>

<xsl:param name="indent" static="yes" as="xsd:boolean" select="true()"/>

<xsl:output _indent="{$indent}"/>

<xsl:template name="xsl:initial-template">
  <xsl:document validation="strict"><letterBody><salutation>Dear Mr.<name>Robert Smith</name>.</salutation> Your order of <quantity>1</quantity><productName>Baby Monitor</productName> shipped from our warehouse on <shipDate>1999-05-21</shipDate>.</letterBody></xsl:document>
</xsl:template>

</xsl:stylesheet>