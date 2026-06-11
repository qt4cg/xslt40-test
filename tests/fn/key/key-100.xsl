<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    expand-text="yes"
    version="4.0"
    xpath-default-namespace="example.com">

	
	
	<xsl:variable name="data">
		<doc xmlns="example.com">
			<data><id>-5</id>minus five</data>
			<data><id>-4</id>minus four</data>
			<data><id>-3</id>minus three</data>
			<data><id>-2</id>minus two</data>
			<data><id>-1</id>minus one</data>
			<data><id>-0</id>zero</data>
			<data><id>1</id>plus one</data>
			<data><id>2</id>plus two</data>
		</doc>
	</xsl:variable>

	<xsl:key name="d" match="data" use="xs:integer(id)"/>

	
	<xsl:template name="xsl:initial-template">
		<out><xsl:apply-templates select="$data/*"/></out>
	</xsl:template>
	
	<xsl:template match="key('d', -5) | key('d',-4) |key('d',-3) | key('d',-2) | key('d',-1)">
		<a>{./text()} is negative</a>
    </xsl:template>
	
	<xsl:template match="key('d',0)">
		<a>{./text()} is zero</a>
	</xsl:template>
	
	<xsl:template match="key('d',1) | key('d',2)">
		<a>{./text()} is positive</a>
	</xsl:template>
	

    
</xsl:stylesheet>