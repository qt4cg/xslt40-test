<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="4.0"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="#all"
	expand-text="yes">
	
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
	
	<xsl:mode streamable="yes" on-no-match="shallow-skip" use-accumulators="#all"/>
	
	<xsl:accumulator name="header-cats" as="xs:string*" initial-value="()" streamable="yes">
		<xsl:accumulator-rule match="header-items/item/cat/text()" select="$value, string()"/>
	</xsl:accumulator>
	
	<xsl:accumulator name="capture-data" as="element()?" initial-value="()" streamable="yes">
		<xsl:accumulator-rule match="data-items/foo" phase="end" capture="yes" select="."/>
	</xsl:accumulator>
	
	<xsl:template match="foo[accumulator-after('capture-data')[not(cat = accumulator-before('header-cats'))]]">
		<xsl:copy-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>