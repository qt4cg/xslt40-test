<?xml version="1.0"?> 


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
   xmlns:f="http://localhost/functions"
  xmlns:err="http://www.w3.org/2005/xqt-errors"
  exclude-result-prefixes=" f err">

  <!-- Test xsl:try as an instruction -->

  <xsl:param name="a" select="0"/>


  <xsl:template name="main">
    <o>
      <xsl:try select="10 div $a">
        <xsl:catch errors="*">
          <err:error code="{$err:map?code}" module="{tokenize($err:map?module, '/')[last()]}"
            line="{$err:map?line-number}">
            <message>
              <xsl:value-of select="$err:map?description"/>
            </message>
          </err:error>
        </xsl:catch>
      </xsl:try>
    </o>
  </xsl:template>


</xsl:stylesheet>
