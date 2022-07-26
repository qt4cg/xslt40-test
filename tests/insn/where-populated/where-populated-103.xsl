<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:template name="xsl-initial-template">
       <out>
           <a>
               <xsl:where-populated>
                   <xsl:sequence select="[]"/>
               </xsl:where-populated>
           </a>
           <b>
               <xsl:where-populated>
                   <xsl:sequence select="[[]]"/>
               </xsl:where-populated>
           </b>
           <c>
               <xsl:where-populated>
                   <xsl:sequence select="[()]"/>
               </xsl:where-populated>
           </c>
           <d>
               <xsl:where-populated>
                   <xsl:sequence select="['']"/>
               </xsl:where-populated>
           </d>
           <e>
               <xsl:variable name="e" as="element(*)">
                   <element/>
               </xsl:variable>
               <xsl:where-populated>
                   <xsl:sequence select="[$e]"/>
               </xsl:where-populated>
           </e>
           <f>
               <xsl:variable name="e" as="element(*)">
                   <element/>
               </xsl:variable>
               <xsl:where-populated>
                   <xsl:sequence select="[[$e, $e, ()]]"/>
               </xsl:where-populated>
           </f>
           <z>
               <xsl:where-populated>
                   <xsl:sequence select="[42]"/>
               </xsl:where-populated>
           </z>
       </out>
    </xsl:template>
    
</xsl:stylesheet>