<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="xs array" version="4.0" expand-text="true">
  
  
    
    <xsl:template name="xsl:initial-template">
      <xsl:variable name="input" as="array(array(xs:integer))">
        <xsl:array>
          <xsl:for-each select="0 to 9">
            <xsl:array-member>
              <xsl:array select="10*. to 10*. + 9"/>
            </xsl:array-member>
          </xsl:for-each>
        </xsl:array>
      </xsl:variable>
      <xsl:variable name="inverted" as="array(array(xs:integer))">
        <xsl:array>
          <xsl:for-each select="1 to array:size($input)">
            <xsl:variable name="row" select="."/>
            <xsl:array-member>
              <xsl:array>
                <xsl:for-each select="1 to 10">
                  <xsl:variable name="col" select="."/>
                  <xsl:array-member select="$input?$col?$row"/>
                </xsl:for-each>
              </xsl:array>
            </xsl:array-member>
          </xsl:for-each>
        </xsl:array>
      </xsl:variable>
      <xsl:sequence select="$inverted"/>
    </xsl:template>
    
</xsl:stylesheet>