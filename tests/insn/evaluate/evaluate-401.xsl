<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:my="http://www.example.com/my-functions" exclude-result-prefixes="my"
  expand-text="yes">

  <!-- PURPOSE test xsl:evaluate using proposed XPath 4.0 syntax -->


  <xsl:param name="p">(1 to {$q}) otherwise 442</xsl:param>
  <xsl:param name="q" select="-10"/>
  
  <xsl:template name="xsl:initial-template" >
    <out>
      <xsl:evaluate xpath="$p"/>
    </out>
  </xsl:template>

 
</xsl:stylesheet>
