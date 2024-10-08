<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <!-- Purpose: xsl:sequence with @as attribute -->

   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:sequence select="1 to 10" as="xs:integer+"/>
      </out>
   </xsl:template>
</xsl:transform>
