<xsl:transform version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs err">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
    
 
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:source-document streamable="yes" href="../docs/books.xml">
        <xsl:for-each select="BOOKLIST/BOOKS/ITEM">
          <xsl:variable name="m" as="map(*)">
            <xsl:map duplicates="combine">
              <xsl:map-entry key="'price'" select="number(PRICE)"/>
              <xsl:map-entry key="'publisher'" select="string(PUBLISHER)"/>
              <xsl:map-entry key="'author'" select="string(AUTHOR)"/>
              <xsl:map-entry key="'title'" select="string(TITLE)"/>
              <xsl:map-entry key="'price'" select="93.7"/>
            </xsl:map>
          </xsl:variable>
          <xsl:sequence select="$m?price"/>
        </xsl:for-each>
      </xsl:source-document>
    </out>
  </xsl:template>
  
 
  

  
</xsl:transform>  