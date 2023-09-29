<?xml version="1.0" encoding="UTF-8"?>
<xsl:package
  name="http://www.w3.org/xslt30-test/accumulator/accumulator-001"
  package-version="1.0"
  declared-modes="no"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://accum001/"
  exclude-result-prefixes="#all" version="4.0">

  <!-- Test an accumulator with capture = yes, check that we really have a snapshot -->
  
  <xsl:param name="streamable" static="yes" select="'yes'"/>
  

  <xsl:accumulator name="a" as="element(LoanStatus)?" initial-value="()" _streamable="{$streamable}">
    <xsl:accumulator-rule match="LoanStatus" phase="end" capture="yes" select="."/>
  </xsl:accumulator>

  <xsl:mode _streamable="{$streamable}" on-no-match="shallow-skip" use-accumulators="a"/>
  
  <xsl:template name="main" visibility="public">
    <xsl:source-document href="loans.xml" _streamable="{$streamable}" use-accumulators="a">
      <xsl:apply-templates/>
    </xsl:source-document>
  </xsl:template>

  <xsl:template match="myroot">
    <out>
      <xsl:apply-templates/>
    </out>
  </xsl:template>
  
  <xsl:template match="Property">
    <property>
      <xsl:apply-templates select="accumulator-after('a')" mode="aa"/>
    </property>
  </xsl:template>
  
  <xsl:mode name="aa" streamable="no"/>
  
  <xsl:template match="LoanStatus" mode="aa">
    <xsl:copy>
      <xsl:copy-of select="ancestor::*/@*"/>
      <xsl:copy-of select="UnpaidPrincipalBalanceAmount"/>
    </xsl:copy>
  </xsl:template>

</xsl:package>
