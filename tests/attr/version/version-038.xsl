<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="59.0">

  <!-- PURPOSE: Test xsl:fallback is not itself executed in forwards compatible mode. -->
  <?spec xslt#fallback?>
  <xsl:template match="/">
    <out>
      <xsl:magic>
        <xsl:fallback>
          <xsl:wizardry/>
        </xsl:fallback> 
      </xsl:magic>
      <xsl:text>42</xsl:text>
    </out>
  </xsl:template>
   
</xsl:stylesheet>
