<?xml version="1.0" encoding="UTF-8"?>

<!-- show schema declarations are available if schema-aware = yes -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ev28="http://example.com/evaluate028" version="4.0"
exclude-result-prefixes="xs ev28">

  <xsl:output method="xml" encoding="UTF-8"/>
  
  <xsl:import-schema role="special">
    <xs:schema targetNamespace="http://example.com/evaluate403a">
      <xs:simpleType name="restrictedDate">
        <xs:restriction base="xs:date">
          <xs:minInclusive value="2009-01-01"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema>
    <xs:schema targetNamespace="http://example.com/evaluate403b">
      <xs:simpleType name="percentage">
        <xs:restriction base="xs:integer">
          <xs:minInclusive value="0"/>
          <xs:maxInclusive value="100"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:param name="path">Q{http://example.com/evaluate403a}restrictedDate(xs:date('2020-03-16Z'))</xsl:param>
  
  <xsl:template match="/" name="main">
    <Result>
      <xsl:variable name="pc" select="Q{http://example.com/evaluate403b}percentage(93)"/>
      <value pc="{$pc}">
         <xsl:evaluate xpath="$path" as="xs:date" schema-aware="yes" schema-role="special"/>
      </value>
    </Result>
  </xsl:template>
  
</xsl:stylesheet> 
