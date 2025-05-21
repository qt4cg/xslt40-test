<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:f="http://function"
    exclude-result-prefixes="xs math f"    
    version="4.0">
    
    <xsl:function name="f:f">
        <xsl:param name="p"/>
        <xsl:select as="xs:integer">
            $p + 1
        </xsl:select>
    </xsl:function>
    
    <xsl:template name="xsl:initial-template">
      <out ok="{f:f(12)}"/>
    </xsl:template>
    
    
</xsl:stylesheet>