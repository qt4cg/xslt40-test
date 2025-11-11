<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
  <xsl:variable name="tz" as="xs:string">
    {
    "Africa/Abidjan": {"offset": "+00:00", "DST-offset": "+00:00" },
    "Africa/Algiers": {"offset": "+01:00", "DST-offset": "+01:00" },
    "Africa/Nairobi": {"offset": "+03:00", "DST-offset": "+03:00" },
    "America/Anchorage": {"offset": "-09:00", "DST-offset": "-08:00" },
    "America/Los_Angeles": {"offset": "-08:00", "DST-offset": "-07:00" },
    "Asia/Dubai": {"offset": "+04:00", "DST-offset": "+04:00" },
    "Asia/Kolkata": {"offset": "+05:30", "DST-offset": "+05:30" }                 
    }
  </xsl:variable>
  
  <xsl:variable name="result" as="map(*)">
    <xsl:map>
    <xsl:for-each-group select="parse-json($tz)/*" group-by="substring-before(jnode-selector(), '/')">
      <xsl:map-entry key="current-grouping-key()">
        <xsl:map>
          <xsl:for-each select="current-group()">
            <xsl:map-entry key="substring-after(jnode-selector(), '/')" select="jnode-content()"/>
          </xsl:for-each>
        </xsl:map>
      </xsl:map-entry>
    </xsl:for-each-group>
  </xsl:map>
  </xsl:variable>
  
    <xsl:template name="xsl:initial-template">
      <out>
        <Nairobi offset="{$result?Africa?Nairobi?offset}"/>
        <Anchorage offset="{$result?America?Anchorage?offset}"/>
        <Kolkata offset="{$result?Asia?Kolkata?offset}"/>
      </out>
    </xsl:template>
    
 

    
</xsl:stylesheet>