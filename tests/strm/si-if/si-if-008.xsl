<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes=" xs" version="4.0">

  <!-- streaming, xsl:if inside for-each, with motionless conditions -->

  <xsl:strip-space elements="*"/>


  <xsl:template name="main">
    <out>
      <xsl:source-document streamable="yes" href="../docs/bullets.xml">
        <xsl:for-each select="/*/*">
          <xsl:if test="name() = 'p' or @noWay or ancestor::*/@noWay or 
            generate-id() = 'improbably95281' or self::important" then="'egotistic'" else="copy-of(.)"/>
        </xsl:for-each>  
      </xsl:source-document>
    </out>
  </xsl:template>

</xsl:transform>
