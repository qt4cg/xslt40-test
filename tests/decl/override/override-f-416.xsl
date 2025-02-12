<xsl:package 
  name="http://www.w3.org/xslt30tests/override-001"
  package-version="1.0.1"
  version="4.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/override-base-001"
  exclude-result-prefixes="xs p">
  
  <xsl:use-package
    name="http://www.w3.org/xslt30tests/override-base-001"
    package-version="1.0.0">
  
    <xsl:override>
  
      <xsl:function name="p:f" as="xs:string" visibility="public">
        <xsl:param name="in44" as="xs:string"/>
        <xsl:param name="count44" as="xs:integer"/>
        <xsl:sequence select="'*' || xsl:original(in := $in44, count := $count44) || '*'"/>
      </xsl:function>
    
      <xsl:function name="p:f-abstract" as="xs:string" visibility="public">
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="count" as="xs:integer"/>
        <xsl:sequence select="'abcd'"/>
      </xsl:function>
      
    </xsl:override>  
    
  </xsl:use-package>
  
 
   
    <xsl:template name="main" visibility="public">
      <xsl:choose>
        <xsl:when test="p:f('x', 5) = '*xxxxx*'"><ok/></xsl:when>
        <xsl:otherwise><wrong value="{p:f('x', 5)}"/></xsl:otherwise>
      </xsl:choose>
    </xsl:template>
    
 
  
</xsl:package>   