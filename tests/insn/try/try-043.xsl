<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes=" err">

  <!-- Attempt to throw a dynamic error during lazy/incremental evaluation of
       a variable; to catch the error; and then to evaluate the variable again -->

  <xsl:template name="main">
    <out>
      <xsl:variable name="nnn" select="for $i in 0 to 500 return (85267 div $i)"/>
      <xsl:try>
        <xsl:variable name="pi" select="-1"/>
        <xsl:attribute name="test" select="1 div 0"/>
        <xsl:catch errors="err:FOAR9876 err:FOAR0001" select="$pi"/>
        <xsl:catch errors="*" select="'Unexpected error'"/>
      </xsl:try>
    </out>
  </xsl:template>

  <xsl:variable name="pi" select="3.14159"/>

</xsl:stylesheet>
