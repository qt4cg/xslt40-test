<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <xsl:import href="maps-001.xsl"/>
    
    <xsl:output method="xml"/>
    
    <xsl:variable name="sales" as="map(*)*">
      <xsl:map select="
        map:entry('product', 'broiler'), 
        map:entry('store number', 1), 
        map:entry('quantity', 20)"/>
      <xsl:map select="
        map:entry('product', 'toaster'),
        map:entry('store number', 2),
        map:entry('quantity', 100)"/>
      <xsl:map select="
        map:entry('product', 'toaster'),
        map:entry('store number', 2),
        map:entry('quantity', 50)"/>
      <xsl:map select="
        map:entry('product', 'toaster'),
        map:entry('store number', 3),
        map:entry('quantity', 50)"/>
      <xsl:map select="
        map:entry('product', 'blender'),
        map:entry('store number', 3),
        map:entry('quantity', 100)"/>
      <xsl:map select="
        map:entry('product', 'blender'),
        map:entry('store number', 3),
        map:entry('quantity', 150)"/>
      <xsl:map select="
        map:entry('product', 'socks'),
        map:entry('store number', 1),
        map:entry('quantity', 500)"/>
      <xsl:map select="
        map:entry('product', 'socks'),
        map:entry('store number', 2),
        map:entry('quantity', 10)"/>
      <xsl:map select="
        map:entry('product', 'shirt'),
        map:entry('store number', 3),
        map:entry('quantity', 10)"/>
    </xsl:variable>
    
    <xsl:variable name="products" as="map(*)*">
      <xsl:map select="
        map:entry('name', 'broiler'),
        map:entry('category', 'kitchen'),
        map:entry('price', 100),
        map:entry('cost', 70)"/>
      <xsl:map select="
        map:entry('name', 'toaster'),
        map:entry('category', 'kitchen'),
        map:entry('price', 30),
        map:entry('cost', 10)"/>
      <xsl:map select="
        map:entry('name', 'blender'),
        map:entry('category', 'kitchen'),
        map:entry('price', 50),
        map:entry('cost', 25)"/>
      <xsl:map select="
        map:entry('name', 'socks'),
        map:entry('category', 'clothes'),
        map:entry('price', 5),
        map:entry('cost', 2)"/>
      <xsl:map select="
        map:entry('name', 'shirt'),
        map:entry('category', 'clothes'),
        map:entry('price', 10),
        map:entry('cost', 3)"/>
    </xsl:variable>
    
    <xsl:variable name="stores" as="map(*)*" select='
        map{ "store number" : 1, "state" : "CA" },
        map{ "store number" : 2, "state" : "CA" },
        map{ "store number" : 3, "state" : "MA" },
        map{ "store number" : 4, "state" : "MA" }'/>
    
    <xsl:template name="main">
        <xsl:variable name="state-maps" as="map(*)*">
            <xsl:for-each-group select="$stores" group-by=".('state')">
                <xsl:variable name="state" select="current-grouping-key()" as="xs:string"/>
                <xsl:variable name="stores-in-state" select="current-group()!.('store number')" as="xs:integer*"/>
                <xsl:variable name="state-map-entry" as="map(*)*">
                    <xsl:for-each-group select="$products" group-by=".('category')">
                        <xsl:variable name="category" select="current-grouping-key()" as="xs:string"/>
                        <xsl:variable name="products-in-category" select="current-group()" as="map(*)*"/>
                        <xsl:variable name="totals-map" as="map(*)*">
                            <xsl:variable name="totals-map-entries" as="map(*)*">
                                <xsl:for-each select="$products-in-category">
                                   <xsl:variable name="product-name" select=".('name')"/>
                                   <xsl:variable name="product-sales" 
                                       select="$sales[.('product') = $product-name and 
                                                         .('store number') = $stores-in-state]"/>                      
                                   <xsl:if test="exists($product-sales)">                      
                                      <xsl:map select="map{ $product-name : sum($product-sales!.('quantity')) }"/>
                                   </xsl:if>   
                                </xsl:for-each>
                            </xsl:variable>
                            <xsl:map select="$totals-map-entries"/>
                        </xsl:variable>
                        <xsl:sequence select="map{ $category : $totals-map }"/>
                    </xsl:for-each-group>
                </xsl:variable>    
                <xsl:map select=" map { $state : $state-map-entry }"/>
            </xsl:for-each-group>
        </xsl:variable>
        <json>
          <xsl:text>[</xsl:text>
            <xsl:for-each select="$state-maps">
              <xsl:if test="position() ne 1">,</xsl:if>
              <xsl:apply-templates select="." mode="to-json"/>
            </xsl:for-each>
          <xsl:text>]</xsl:text>
        </json>  
    </xsl:template>   
    
</xsl:stylesheet>