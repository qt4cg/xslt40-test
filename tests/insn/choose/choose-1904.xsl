<?xml version="1.0" ?>
<xsl:stylesheet
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
exclude-result-prefixes="xs"
version="2.0">
<!--  Test "if" - false branch; true branch must not be evaluated
-->
<?spec xpath#id-conditionals?>
<xsl:template match="doc">
<out>
<xsl:value-of select="if (xs:integer(two/@val) > xs:integer(three/@val))
then xs:integer(three/@val) div xs:integer(zero/@val) else false/@val"/>
</out>
</xsl:template>
</xsl:stylesheet>
