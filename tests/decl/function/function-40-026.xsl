<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="urn:functions"
  exclude-result-prefixes="#all">
  <xsl:function name="f:focus" as="xs:string">
    <xsl:param name="unused" as="xs:string"/>
    <xsl:param name="a" as="xs:string" required="no"
      select="string(.) || ':' || position() || '/' || last()"/>
    <xsl:param name="b" as="xs:string" required="no">
      <xsl:sequence select="string(.) || ':' || position() || '/' || last()"/>
    </xsl:param>
    <xsl:sequence select="$a || '|' || $b"/>
  </xsl:function>
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:for-each select="('X', 'Y')">
        <xsl:variable name="named" select="f:focus#1"/>
        <xsl:variable name="lookup" select="function-lookup(QName('urn:functions', 'focus'), 1)"/>
        <xsl:variable name="partial" select="f:focus(?)"/>
        <!-- Invocation has a different item, position and size from creation. -->
        <xsl:for-each select="('OTHER', 'LAST', 'END')">
          <xsl:if test="position() = 3">
            <r named="{$named('unused')}" lookup="{$lookup('unused')}"
               partial="{$partial('unused')}"/>
          </xsl:if>
        </xsl:for-each>
      </xsl:for-each>
    </out>
  </xsl:template>
</xsl:stylesheet>
