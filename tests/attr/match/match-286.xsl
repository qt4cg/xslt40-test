<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:fn="http://www.w3.org/2005/xpath-functions"
  xmlns:err="http://www.w3.org/2005/xqt-errors"
  exclude-result-prefixes="#all">

  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:variable name="target" select="doc('match-286a.xsl')"/>
      <xsl:for-each select="unparsed-text-lines('match-invalid-patterns.txt')">
        <xsl:try>
          <xsl:variable name="r" select="transform(map{
            'stylesheet-node': $target,
            'static-params': map{fn:QName('', 'pattern'): .}
            })"/>
          <fail pattern="{.}"><xsl:copy-of select="$r?output"/></fail>
          <xsl:catch><ok with="{.}" error="{$err:description}"/></xsl:catch>
        </xsl:try>  
      </xsl:for-each>
    </out>
  </xsl:template>

</xsl:stylesheet>
