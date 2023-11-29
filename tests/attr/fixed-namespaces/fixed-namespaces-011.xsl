<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    fixed-namespaces="my=http://example.com/my/ns your=http://example.com/your/ns my=http://example.com/my2/ns #standard">
    
    <xsl:function name="my:f" as="xs:string">
        <xsl:param name="your:p1"/>
        <xsl:param name="your:p2"/>
        <xsl:sequence select="$your:p1 || $your:p2"/>
    </xsl:function>
    <xsl:template name="main">
        <out>
            <xsl:sequence select="Q{http://example.com/my2/ns}f(your:p1:='a', your:p2:='b')"/>
        </out>
    </xsl:template>
 
</xsl:stylesheet>
