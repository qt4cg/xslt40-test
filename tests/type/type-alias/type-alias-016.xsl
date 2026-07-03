<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   fixed-namespaces="#standard"
   expand-text="yes"
>
  <!-- Record type with duplicate field names-->
  
  <xsl:variable name="in" expand-text="no" as="map(*)">
    <xsl:select>
      { "name": "Johann Schmidt",
        "date of birth": xs:date("1951-10-11"),
        "place of birth": "Hannover"
      }
    </xsl:select>
  </xsl:variable>
  
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:variable name="f" select="fn($p as person) as person {map:put($p, 'date of birth', xs:date('1885-12-15'))}"/>
      <xsl:variable name="p2" select="$f($in)"/>
      <result name="{$p2?name}" dob="{$p2?'date of birth'}" pob="{$p2?'place of birth'}"/> 
    </out>
  </xsl:template>
  
  <xsl:item-type name="person" as="record(name as xs:string, 'date of birth' as xs:date, 'place of birth' as xs:string)"/>
  
  
  
 
</xsl:stylesheet>
