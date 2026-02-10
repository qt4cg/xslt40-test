<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	
	<xsl:include href="include-1001.xml#does-not-exist" />
	
	<xsl:template match="/">
		<out><xsl:apply-templates /></out>
	</xsl:template>
	
</xsl:stylesheet>