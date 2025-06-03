<xsl:transform version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs err">
    

  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:source-document streamable="yes" href="../docs/books.xml">
        <xsl:for-each select="BOOKLIST/BOOKS/ITEM">
          <xsl:variable name="m" as="map(*)"
            select="map{ 'author': string(AUTHOR),
                         'title': string(TITLE),
                         'price': number(PRICE),
                         'publisher': string(PUBLISHER)}"/>
          <book author="{$m('author')}" title="{$m('title')}" price="{$m('price')}" publisher="{$m('publisher')}"/>     
        </xsl:for-each>
      </xsl:source-document>
    </out>
  </xsl:template>
 

  
</xsl:transform>  