<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="3.0"
    xmlns:err="http://www.w3.org/2005/xqt-errors" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Lazy evaluation of a variable; attempting to continue after a suppressed error -->
    <!-- Saxon bug 6440. We decided that the xsl:message can legitimately recover from
         failing to read the variable, but that subsequent references to the same variable
         should fail. There is scope for other interpretations; the result <A>4</A> 
         could be justified. -->

    <xsl:template name="xsl:initial-template">
        <xsl:variable name="dodgy" select="for $i in (0 to 20) return 10000 div ($i * year-from-date(current-date())) "/>
        <xsl:message select="$dodgy[1]"/>
        <A><xsl:value-of select="$dodgy[2]"/></A>
    </xsl:template>
</xsl:stylesheet>