<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:mode streamable="yes"/>
  <xsl:mode name ="grounded" streamable="no" on-no-match="shallow-copy"/>
  
  <xsl:template match="Cc">
        <xsl:copy>
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates select="copy-of(Dok)" mode="grounded"/>
        </xsl:copy>
  </xsl:template>

  <xsl:template match="Abs" mode="grounded">
    <xsl:copy>
      <xsl:attribute name="NewTyp" select="@Typ || 'somechange'"/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>