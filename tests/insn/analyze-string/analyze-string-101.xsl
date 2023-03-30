<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://local.functions/ns"
    exclude-result-prefixes="xs f" version="4.0">
    
    <!-- Tests named function reference to regex-group() -->

    <xsl:function name="f:analyze" as="function(xs:integer) as xs:string">
        <xsl:param name="date" as="xs:string"/>
        <xsl:analyze-string select="$date"
            regex="([0-9]{{1,2}})?\s?([A-Z]{{1}}[a-z]{{1,8}}\.?)?\s?([0-9]{{4}})" flags="">               
            <xsl:matching-substring>
                <xsl:sequence select="regex-group#1"/>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:function>
    
    <xsl:template name="main">
        <xsl:variable name="groups" select="f:analyze('26 March 2023')"/>
        <out zero="{$groups(0)}" day="{$groups(1)}" month="{$groups(2)}" year="{$groups(3)}" other="{$groups(17)||empty($groups(17))}"/>
    </xsl:template>

</xsl:stylesheet>
