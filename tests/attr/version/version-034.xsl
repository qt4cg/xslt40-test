<?xml version="1.0" encoding="iso-8859-1"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <!-- PURPOSE: Test xsl:fallback for an XSL instruction introduced in 4.0. -->
  <?spec xslt#fallback?>
  <xsl:template match="/">
    <out>
        <xsl:note>
          <xsl:fallback/>
          This should work both in 3.0 and 4.0
        </xsl:note>
        <xsl:text>42</xsl:text>
    </out>
  </xsl:template>
   
</xsl:stylesheet>
