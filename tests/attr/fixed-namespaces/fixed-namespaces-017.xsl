<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" exclude-result-prefixes="#all"
    fixed-namespaces="#standard p=urn:caller">
  <xsl:include href="fixed-namespaces-017-keys.xsl"/>
  <xsl:template name="main">
    <xsl:variable name="doc">
      <root xmlns:src="urn:fixed" xmlns:caller="urn:caller">
        <item src:id="a" caller:id="wrong"/>
      </root>
    </xsl:variable>
    <out current="{count(key('u4', 'a', $doc))}"
         earlier="{count(key('u3', 'a', $doc))}"/>
  </xsl:template>
</xsl:stylesheet>
