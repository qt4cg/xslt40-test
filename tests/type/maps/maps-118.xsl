<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
  <xsl:variable name="sales" as="map(*)*" select='
    map{ "product" : "broiler", "store number" : 1, "quantity" : 20  },
    map{ "product" : "toaster", "store number" : 2, "quantity" : 100 },
    map{ "product" : "toaster", "store number" : 2, "quantity" : 50 },
    map{ "product" : "toaster", "store number" : 3, "quantity" : 50 },
    map{ "product" : "blender", "store number" : 3, "quantity" : 100 },
    map{ "product" : "blender", "store number" : 3, "quantity" : 150 },
    map{ "product" : "socks", "store number" : 1, "quantity" : 500 },
    map{ "product" : "socks", "store number" : 2, "quantity" : 10 },
    map{ "product" : "shirt", "store number" : 3, "quantity" : 10 }'/>

    <xsl:template name="xsl:initial-template">
      <out>
        <xsl:for-each select="$sales">
          <sale>
            <xsl:iterate select="map:pairs(.)">
              <xsl:attribute name="{translate(?key, ' ', '_')}" select="?value"/>
            </xsl:iterate>
          </sale>
        </xsl:for-each>
      </out>
    </xsl:template>
    
 

    
</xsl:stylesheet>