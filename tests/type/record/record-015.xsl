<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:cx="http://saxon.sf.net/complex"
    exclude-result-prefixes="xs cx"
    expand-text="yes"
    >
    <xsl:variable name="data" select="cx:entry('a', true()), cx:entry('b', false())" 
        as="record(x as xs:string, b as xs:boolean)+"/>
    
    <xsl:function name="cx:entry">
        <xsl:param name="a"/>
        <xsl:param name="b"/>
        <xsl:sequence select="map{'x': $a, 'b': $b}"/>
    </xsl:function>
    
    <xsl:template name="xsl:initial-template">
        <out>{  $data[1]?b  }</out>
    </xsl:template>  
    
</xsl:stylesheet>
