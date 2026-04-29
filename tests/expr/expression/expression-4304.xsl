<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map"
   exclude-result-prefixes="xs map">
   
   <!-- 4.0 default namespace ##any within an XPath expression -->
   
   <xsl:variable name="data">
      <e xmlns="http://example.ns">zounds</e>
   </xsl:variable>
   <xsl:template name="main">
      <out>
         <xsl:variable name="X" select="declare namespace a='http://example.ns'; $data/a:e"/>
         <xsl:variable name="Y" select="declare default element namespace '##any'; $data/e"/>
         <temp X="{count($X)}" Y="{count($Y)}"/>
         <xsl:value-of select="$X is $Y"/>
      </out>
   </xsl:template>
   
</xsl:stylesheet>