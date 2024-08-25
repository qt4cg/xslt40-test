<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:saxon="http://saxon.sf.net/"
   expand-text="yes"
   exclude-result-prefixes="#all"
>
<xsl:param name="n" select="()"/>
<xsl:template name="xsl:initial-template">
 <out>{12 * $n otherwise 2}</out>
</xsl:template>


</xsl:stylesheet>
