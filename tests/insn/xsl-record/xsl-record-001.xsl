<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://local-functions.org/"
    exclude-result-prefixes="map xs f">
    
    <xsl:include href="to-json.xsl"/> 
    
    <xsl:variable name="sales" as="map(*)*">
        <xsl:record product="'broiler'" store="1" quantity="20"/>     
        <xsl:record product="'toaster'" store="2" quantity="100"/>
        <xsl:record product="'toaster'" store="2" quantity="50"/>
        <xsl:record product="'toaster'" store="3" quantity="50"/>
        <xsl:record product="'blender'" store="3" quantity="100"/>
        <xsl:record product="'blender'" store="3" quantity="150"/>
        <xsl:record product="'socks'" store="1" quantity="500"/>
        <xsl:record product="'socks'" store="2" quantity="10"/>        
        <xsl:record product="'shirt'" store="3" quantity="10"/>        
    </xsl:variable>
    
    <xsl:variable name="products" as="map(*)*">
        <xsl:record name="'broiler'" category="'kitchen'" price="100" cost="70"/>
        <xsl:record name="'toaster'" category="'kitchen'" price="30" cost="10"/>
        <xsl:record name="'blender'" category="'kitchen'" price="50" cost="25"/>
        <xsl:record name="'socks'" category="'clothes'" price="5" cost="2"/>
        <xsl:record name="'shirt'" category="'clothes'" price="10" cost="3"/>
    </xsl:variable>
    
    <xsl:variable name="stores" as="map(*)*">
        <xsl:record store="1" state="'CA'"/>
        <xsl:record store="2" state="'CA'"/>
        <xsl:record store="3" state="'MA'"/>
        <xsl:record store="4" state="'MA'"/>
    </xsl:variable>
    
    <xsl:template name="main">
        <xsl:variable name="state-maps" as="map(*)*">
            <xsl:for-each-group select="$stores" group-by=".('state')">
                <xsl:variable name="state" select="current-grouping-key()" as="xs:string"/>
                <xsl:variable name="stores-in-state" select="current-group()!.('store')" as="xs:integer*"/>
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
                                                         .('store') = $stores-in-state]"/>                      
                                   <xsl:if test="exists($product-sales)">                      
                                      <xsl:sequence select="map{ $product-name : sum($product-sales!.('quantity')) }"/>
                                   </xsl:if>   
                                </xsl:for-each>
                            </xsl:variable>
                            <xsl:sequence select="map:merge($totals-map-entries)"/>
                        </xsl:variable>
                        <xsl:sequence select="map{ $category : $totals-map }"/>
                    </xsl:for-each-group>
                </xsl:variable>    
                <xsl:sequence select=" map { $state : $state-map-entry }"/>
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