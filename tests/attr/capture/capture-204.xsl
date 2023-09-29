<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="#all"
	expand-text="yes"
	version="4.0">
	
	<xsl:mode on-no-match="shallow-copy" use-accumulators="#all" streamable="yes"/>
	
	<xsl:accumulator name="items" as="element(item)*" initial-value="()" streamable="yes">
		<xsl:accumulator-rule phase="end" match="item" select="$value, ." capture="yes"/>
	</xsl:accumulator>
	
	<xsl:template match="item">
		<itemOut>
		<xsl:next-match/>
			<details id="{@id}" count="{count(accumulator-after('items'))}" value="{accumulator-after('items')!@id!string()}"/>
		</itemOut>
	</xsl:template>
	
</xsl:stylesheet>