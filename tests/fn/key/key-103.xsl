<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:p="example.com"
    exclude-result-prefixes="xs math"
    expand-text="yes"
    version="3.0">

	
	
	<xsl:variable name="data">
		<doc>
			<a>12:00:00-12:00</a>
			<b>12:00:00-11:00</b>
			<c>12:00:00-10:00</c>
			<d>12:00:00-09:00</d>
			<e>12:00:00-08:00</e>
			<f>12:00:00-07:00</f>
			<g>12:00:00-06:00</g>
			<h>12:00:00-05:00</h>
			<i>12:00:00-04:00</i>
			<j>12:00:00-03:00</j>
			<k>12:00:00-02:00</k>
			<l>12:00:00-01:00</l>
			<m>12:00:00Z</m>
			<n>12:00:00+01:00</n>
			<o>12:00:00+02:00</o>
			<p>12:00:00+03:00</p>
			<q>12:00:00+04:00</q>
			<r>12:00:00+05:00</r>
			<s>12:00:00+06:00</s>
			<t>12:00:00+07:00</t>
			<u>12:00:00+08:00</u>
			<v>12:00:00+09:00</v>
			<w>12:00:00+10:00</w>
			<x>12:00:00+11:00</x>
			<y>12:00:00+12:00</y>
		</doc>
	</xsl:variable>

	<xsl:key name="k" match="doc/*" use="xs:time(.)"/>
	
	<!-- We're indexing times with a timezone, and searching for a time with no timezone.
		In 3.0, there should be a match provided the implicit timezone is "on the hour".
		In 4.0, there should be no match -->

	
	<xsl:template name="xsl:initial-template">
		<out>
			<xsl:message select="'Found: ' || key('k', xs:time('12:00:00'), $data)/local-name()"/>
			<xsl:choose>
				<xsl:when test="contains(string(implicit-timezone()), 'M')">z</xsl:when>
				<xsl:otherwise><xsl:value-of select="key('k', xs:time('12:00:00'), $data)/local-name()"/></xsl:otherwise>
			</xsl:choose>
		</out>
	</xsl:template>
	
	

    
</xsl:stylesheet>