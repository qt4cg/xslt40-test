<?xml version="1.0"?> 
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  
  <xsl:template name="main">
    <out>
      <xsl:future version="8.0">
        <xsl:accumulator/>
        <xsl:fallback><in>ok1</in></xsl:fallback>
        <xsl:copy-of select="."/>
        <xsl:fallback><in>ok2</in></xsl:fallback>
      </xsl:future>
    </out>
  </xsl:template>
  
</xsl:transform>
