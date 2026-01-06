<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map"
   exclude-result-prefixes="xs"
   expand-text="yes"
>
  <xsl:variable name="data">
    <foo>
      <bar id="1" baz="93.7"/>
      <bar id="2" baz="94.9"/>
    </foo>
  </xsl:variable>
  
  <xsl:template match="~record(bar as element(bar), *)">
    <bar id="{?id}" baz="{?baz}"/>
  </xsl:template>
  
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$data//bar ! map{'id': number(@id), 'baz': xs:decimal(@baz), 'bar': .}"/>
    </out>
  </xsl:template>  

</xsl:stylesheet>
