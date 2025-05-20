<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:ex="http://local.example.com/"
  xmlns:fn="http://www.w3.org/2005/xpath-functions"
  version="3.0">
 
  <!-- Test that schema for FN namespace can be imported -->

  <xsl:import-schema>
    <xs:schema targetNamespace="http://local.example.com/">
      <xs:element name="top">
        <xs:complexType>
          <xs:sequence>
            <xs:any processContents="strict"/>
          </xs:sequence>         
        </xs:complexType>
      </xs:element>
    </xs:schema>
  </xsl:import-schema>
  
  <xsl:import-schema namespace="http://www.w3.org/2005/xpath-functions"/>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="top" as="schema-element(ex:top)">
      <ex:top xsl:validation="strict">
        <fn:number>42</fn:number>      
      </ex:top>
    </xsl:variable>
    <xsl:apply-templates select="$top"/>
  </xsl:template>
  
  <xsl:template match="schema-element(ex:top)">
    <ok num="{data(child::*)}" numeric="{data(child::*) instance of xs:double}"/>
  </xsl:template>
  


</xsl:stylesheet>
