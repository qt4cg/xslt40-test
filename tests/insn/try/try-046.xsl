<?xml version="1.0"?> 

<!-- try002 (was saxon087) -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
   xmlns:f="http://localhost/functions"
  xmlns:err="http://www.w3.org/2005/xqt-errors"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes=" f err"
  expand-text="yes">

  <!-- Test xsl:try as an instruction -->

  <xsl:param name="a" select="0"/>


  <xsl:template name="xsl:initial-template">
    <o vendor="{system-property('xsl:vendor')}">
      <xsl:sequence select="f:one(current-dateTime())"/>
    </o>
  </xsl:template>
  
  <!-- There's artificial complexity here intended to avoid function inlining and tail-call optimization -->
  
  <xsl:function name="f:one" as="element()" new-each-time="yes">
    <xsl:param name="p"/>
    <xsl:sequence select="if (exists($p)) then f:two($p) else f:one($p)"/>
    <xsl:sequence select="$a[99]"/>
  </xsl:function>
  
  <xsl:function name="f:two" as="element()" new-each-time="yes">
    <xsl:param name="p"/>
    <xsl:sequence select="if (exists($p)) then f:three($p) else f:two($p)"/>
    <xsl:sequence select="$a[99]"/>
  </xsl:function>
  
  <xsl:function name="f:three" as="element()" new-each-time="yes">
    <xsl:param name="p"/>
    <xsl:sequence select="if (exists($p)) then f:four($p) else f:three($p)"/>
    <xsl:sequence select="$a[99]"/>
  </xsl:function>
  
  <xsl:function name="f:four" as="element()" new-each-time="yes">
    <xsl:param name="p"/>
    <xsl:try>
      <result p="{$p}">{year-from-dateTime($p) div $a}</result>
      <xsl:catch errors="*">
        <stack-trace>{$err:map?stack-trace}</stack-trace>
      </xsl:catch>
    </xsl:try>
    <xsl:sequence select="$a[99]"/>
  </xsl:function>


</xsl:stylesheet>
