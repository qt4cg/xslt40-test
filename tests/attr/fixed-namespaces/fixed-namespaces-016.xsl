<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" exclude-result-prefixes="#all"
    fixed-namespaces="#standard p=urn:fixed q=urn:fixed">
  <xsl:key name="k4" match="p:item" use="@id"/>
  <xsl:key version="3.0" xmlns:p="urn:local" name="k3"
      match="q:*[@id = 'a']" use="@id"/>
  <xsl:template name="main">
    <xsl:variable name="doc">
      <src:root xmlns:src="urn:fixed">
        <src:item id="a"/>
        <src:other id="b"/>
        <native:item xmlns:native="urn:native" id="a"/>
      </src:root>
    </xsl:variable>
    <out current="{count(key('k4', 'a', $doc))}"
         earlier="{count(key('k3', 'a', $doc))}"
         current-ns="{namespace-uri(key('k4', 'a', $doc)[1])}"
         earlier-ns="{namespace-uri(key('k3', 'a', $doc)[1])}"/>
  </xsl:template>
</xsl:stylesheet>
