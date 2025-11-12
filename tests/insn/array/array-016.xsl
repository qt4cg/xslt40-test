<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="xs array" version="4.0" expand-text="true">
  
  <!--The following code transposes a nested array (such as [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ]) 
    so the result is organized by columns rather than rows ([ [ 1, 4, 7 ], [ 2, 5, 8 ], [ 3, 6, 9 ] ]):
-->
  
  <xsl:variable name="in" select="[ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ]"/>
  
  <xsl:output method="json"/>

    
    <xsl:template name="xsl:initial-template">

      <xsl:array>
        <xsl:for-each select="1 to array:size($in?1)">
          <xsl:array-member>
            <xsl:array select="$in?*?(.)"/>
          </xsl:array-member>
        </xsl:for-each>
     </xsl:array>
      
    </xsl:template>
    
</xsl:stylesheet>