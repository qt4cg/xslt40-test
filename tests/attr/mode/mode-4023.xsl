<?xml version="1.0"?> 


<!-- xsl:mode/@copy-namespaces --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:book="http://bookworm.ns/"
  exclude-result-prefixes="xs">

  <xsl:mode as="(element(book:*) | text())" on-no-match="shallow-copy-all" copy-namespaces="no"/> 
  
  <xsl:variable name="book">
    <book:chap xmlns:other="http://other.com/">
      <book:section>1</book:section>
      <book:section>2</book:section>
      <book:section>3</book:section>
      <book:appendix>A</book:appendix>
    </book:chap>
  </xsl:variable>
 
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$book/*"/>
    </out>
  </xsl:template>
  

  <xsl:template match="book:appendix">
    <book:schedule/>
  </xsl:template>
  

    
</xsl:stylesheet>