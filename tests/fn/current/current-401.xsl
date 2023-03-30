<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:variable name="doc">
		<doc>
			<para>1</para>
			<para>2</para>
			<para>3</para>
		</doc>
	</xsl:variable>
	
	<xsl:template name="xsl:initial-template">
		<xsl:variable name="c" as="function(*)">
			<xsl:for-each select="($doc//para)[2]">
				<xsl:sequence select="current#0"/>
			</xsl:for-each>
		</xsl:variable>
		<out val="{$c()}"/>
	</xsl:template>

</xsl:stylesheet>
