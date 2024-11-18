<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="4.0">

<!-- In 4.0 the second argument to document() can be an empty sequence -->
   
   <xsl:variable name="temp"><thing/></xsl:variable>
   
   <xsl:template name="xsl:initial-template">
      <out><xsl:copy-of select="document('document-01.xml', $temp[current-date() lt xs:date('1900-01-01')])"/></out>
   </xsl:template>
   
   
</xsl:transform>
