<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test of instructions inside xsl:text -->

   <xsl:output method="xml" encoding="UTF-8" indent="no"/>

   <xsl:template match="doc">
      <out>
         <xsl:text>  <xsl:if test="true()">Success</xsl:if>  </xsl:text>
      </out>
	  </xsl:template>
</xsl:transform>
