<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map"
   exclude-result-prefixes="xs"
   expand-text="yes"
>
  <xsl:variable name="data" select="json-doc('courses.json')" 
    as="array( 
          record( faculty as xs:string,
                 courses as array (
                    record (
                       course as xs:string,
                       students as array(
                           record( first as xs:string, last as xs:string, email as xs:string )
                       ),
                       length as xs:integer
                    )
                 )
          )
       )"/>
 
  
  
  <xsl:template name="xsl:initial-template">
    <out>{  $data?1?courses?1?students?1?first  }</out>
  </xsl:template>  

</xsl:stylesheet>
