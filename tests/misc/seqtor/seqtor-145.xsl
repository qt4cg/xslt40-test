<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- CDATA map expression preserves a literal newline and both quote characters under expand-text. -->
<xsl:template name="xsl:initial-template">
<xsl:variable name="m" as="map(*)"><xsl:select as="map(*)" expand-text="yes"><![CDATA[
map{'small': 2 < 3, 'note': 'A
B', 'quotes': concat("'", '"')}
]]></xsl:select></xsl:variable>
<out small="{$m?small}" length="{string-length($m?note)}" newline="{string-to-codepoints($m?note)[2]}" quotes="{string-length($m?quotes)}"/>
</xsl:template>
</xsl:stylesheet>
