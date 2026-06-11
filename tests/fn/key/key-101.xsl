<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:p="example.com"
    exclude-result-prefixes="xs math"
    expand-text="yes"
    version="4.0"
    xpath-default-namespace="example.com">

	
	
	<xsl:variable name="data">
		<doc xmlns="example.com">
			<a>1</a>
			<b>2</b>
			<c>3</c>
			<d>4</d>
			<e>5</e>
			<f>6</f>
			<g>7</g>
		</doc>
	</xsl:variable>

	<xsl:key name="Q{example.com}d" match="p:doc/*" use="node-name(.)"/>

	
	<xsl:template name="xsl:initial-template">
		<out><xsl:apply-templates select="$data/p:doc/*"/></out>
	</xsl:template>
	
	<xsl:template match="key(#p:d, #p:a) | key(#p:d, #p:e)">
		<a>'{local-name()}' is a vowel</a>
    </xsl:template>
	
	<xsl:template match="*">
		<a>'{local-name()}' is a consonant</a>
	</xsl:template>
	
	

    
</xsl:stylesheet>