<?xml version="1.0" encoding="UTF-8"?>
<xsl:package
  name="http://www.w3.org/xslt30-test/accumulator/accumulator-001"
  package-version="1.0"
  declared-modes="no"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://accum001/"
  exclude-result-prefixes="#all" version="4.0">

  <!-- Test an accumulator with capture = yes, which allows the post-descent accumulator access to a snapshot of the relevant node -->
  
  <xsl:param name="streamable" static="yes" select="'yes'"/>
  

  <xsl:accumulator name="average" as="xs:decimal*" initial-value="()" _streamable="{$streamable}">
    <xsl:accumulator-rule match="LoanToValueRatioPercent" phase="end" capture="yes" select="($value, xs:decimal(.))"/>
  </xsl:accumulator>

  <xsl:mode _streamable="{$streamable}" on-no-match="shallow-skip" use-accumulators="average"/>
  
  <xsl:template name="main" visibility="public">
    <xsl:source-document href="loans.xml" _streamable="{$streamable}" use-accumulators="average">
      <xsl:apply-templates/>
    </xsl:source-document>
  </xsl:template>

  <xsl:template match="myroot">
    <out count="{count(.//LoanToValueRatioPercent)}">
      <average select="{format-number(avg(accumulator-after('average')), '0.00')}"/>
    </out>
  </xsl:template>
</xsl:package>
