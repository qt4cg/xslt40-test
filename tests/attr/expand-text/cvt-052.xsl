<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="json" indent="no" encoding="UTF-8"/>
    <xsl:template match="/" name="xsl:initial-template">
        <xsl:variable name="json-text">
            <xsl:text>{"parts":[{"template":{"target":{"wt":"lang","href":"./テンプレート:lang"},"params":{"1":{"wt":"vi"},"2":{"wt":"&apos;&apos;&apos;[[樓]][[𩇢]]&apos;&apos;&apos;（[[lầu xanh]]）"}},"i":0}}]}</xsl:text>
        </xsl:variable>
        <xsl:variable name="json-value" select="parse-json($json-text)"/>
        <out><xsl:sequence select="$json-value?parts(1)?template?target?wt"/></out>    
    </xsl:template>
</xsl:stylesheet>