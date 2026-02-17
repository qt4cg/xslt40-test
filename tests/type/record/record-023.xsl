<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:cx="http://saxon.sf.net/complex"
    exclude-result-prefixes="xs cx"
    expand-text="yes"
    >
  
    <xsl:record-type name="person">
      <xsl:field name="first" as="xs:string"/>
      <xsl:field name="last" as="xs:string"/>
      <xsl:field name="middle"/>
      <xsl:field name="father" as="person" required="no"/>
      <xsl:field name="mother" as="person" required="no"/>   
    </xsl:record-type>                   
  
   <!-- Self-reference in record types -->
    
    <xsl:template match="~person">
      <person first="{?first}" middle="{?middle}" last="{?last}">
        <mother><xsl:apply-templates select="?mother"/></mother>
        <father><xsl:apply-templates select="?father"/></father>
      </person>
    </xsl:template>
  

    
    <xsl:template name="xsl:initial-template">
        <out><xsl:apply-templates 
          select="map{'first': xs:NCName('Michael'),
                      'middle': xs:NCName('Howard'),
                      'last': xs:NCName('Kay'),
                      'father': map{'first':'Leslie', 'middle':'Ronald', 'last':'Kay'},
                      'mother': map{'first':'Alma', 'middle':'Brigitte', 'last':'Kay'}}"/>
          </out>
    </xsl:template>  
    
</xsl:stylesheet>
