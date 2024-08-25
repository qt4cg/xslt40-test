<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:fn="http://www.w3.org/2005/xpath-functions">

  <xsl:variable name="v"/>
  <xsl:param name="pattern" static="yes"/>
  <xsl:key name="k" match="a" use="b"/>
  <xsl:template _match="{$pattern}" name="xsl:initial-template"/>

</xsl:stylesheet>
