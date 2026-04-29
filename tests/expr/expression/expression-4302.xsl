<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map"
   exclude-result-prefixes="xs map">
   
   <!-- 4.0 namespace declarations within an XPath expression -->
   <xsl:param name="blahParam" select="'boo'"/>
   
   <xsl:template name="main">
      <xsl:variable name="blah" select="QName('http://example.ns', $blahParam)"/>
      <xsl:variable name="bindings" select="map{'blahQ': $blah}"/>
      <out>
         <one><xsl:sequence select="declare namespace a='http://example.ns'; $blah = (#a:blah1, #a:blah2, #a:blah3)"/></one>
         <two><xsl:sequence select="declare namespace a='http://example.ns'; $blah = (#a:blah1, #a:blah2, #a:blah)"/></two>
         <three><xsl:sequence select="map:get($bindings,'blahQ') = #Q{http://example.ns}blah"/></three>
      </out>
   </xsl:template>
   
</xsl:stylesheet>