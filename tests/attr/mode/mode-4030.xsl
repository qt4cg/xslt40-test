<?xml version="1.0"?> 


<!-- xsl:mode, shallow-copy, applied to a JSON transformation --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:book="http://bookworm.ns/"
  exclude-result-prefixes="xs">

  <xsl:mode on-no-match="shallow-copy"/> 
  
  <xsl:variable name="band">
    [
      { "first": "John", "last": "Lennon"},
      { "first": "Paul", "last": "McCartney"},
      { "first": "George", "last": "Harrison"},
      { "first": "Ringo", "last": "Starr"}
    ]
  </xsl:variable>
 
  <xsl:template name="xsl:initial-template" as="array(*)">
    <xsl:apply-templates select="parse-json($band) => jtree()"/>
  </xsl:template>
  
    
</xsl:stylesheet>