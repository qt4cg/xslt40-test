<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">
<!-- Purpose: Test existence of a 4.0-defined function.  -->

<xsl:variable name="html"><![CDATA[<head><title>Introduction</title></head><body><p>The End</p></body>]]></xsl:variable>
<xsl:template name="xsl:initial-template">
   <out>
      <xsl:sequence use-when="function-available('parse-html', 1)">
         <xsl:sequence select="parse-html($html)//*:p"/>
      </xsl:sequence>
   </out>
</xsl:template>

</xsl:transform>
