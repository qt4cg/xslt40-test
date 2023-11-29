<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:random="http://random.org/"
    exclude-result-prefixes="random"
    fixed-namespaces="xs=http://www.w3.org/2001/XMLSchema my=http://example.com/my/ns your=http://example.com/your/ns">
    
    <xsl:function name="my:f" as="xs:string">
        <xsl:param name="your:p1"/>
        <xsl:param name="your:p2"/>
        <xsl:sequence select="$your:p1 || $your:p2"/>
    </xsl:function>
    <xsl:template name="main">
        <x:out xmlns:x="http://x.com/">
            <xsl:sequence select="my:f(your:p1:='a', your:p2:='b')"/>
        </x:out>
    </xsl:template>
 
</xsl:stylesheet>
