<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" fixed-namespaces="#standard p=urn:fixed q=urn:fixed">
  <xsl:key name="u4" match="item" use="@p:id"/>
  <xsl:key version="3.0" xmlns:p="urn:local" name="u3" match="item" use="@q:id"/>
</xsl:stylesheet>
