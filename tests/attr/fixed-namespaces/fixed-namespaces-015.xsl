<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" exclude-result-prefixes="#all"
    fixed-namespaces="#standard p=urn:fixed">
  <xsl:key name="p:k" match="item" use="@id"/>
  <xsl:template name="main">
    <xsl:variable name="doc"><item id="a"/></xsl:variable>
    <out xmlns:p="urn:local"
      string="{count(key('p:k', 'a', $doc))}"
      qname="{count(key(QName('urn:fixed', 'unbound:k'), 'a', $doc))}"/>
  </xsl:template>
</xsl:stylesheet>
