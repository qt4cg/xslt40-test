<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs err">
    

    
    <!-- Test of xsl:source-document with avg() -->
    
    <xsl:template name="s-003">
      <xsl:source-document streamable="yes" href="../docs/books.xml">
        <out>
          <xsl:value-of select="round(avg(BOOKLIST/BOOKS/ITEM/PRICE!xs:decimal(.)), 2)"/>
        </out>
      </xsl:source-document>
    </xsl:template>
                             
    
</xsl:stylesheet>