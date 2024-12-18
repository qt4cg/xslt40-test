<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- Test of xsl:stream with boolean(), filtered with non-motionless predicate -->
    
    <xsl:template name="main">
      <xsl:source-document streamable="yes" href="../docs/books.xml">
        <out>
          <xsl:copy-of select="boolean(./BOOKLIST/BOOKS/ITEM[AUTHOR='Jasper Fforde'])"/>
        </out>
      </xsl:source-document>
    </xsl:template>   
    
</xsl:stylesheet>