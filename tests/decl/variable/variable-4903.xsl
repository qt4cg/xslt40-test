<?xml version="1.0"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- In 4.0 document nodes are not created if the sequence
  constructor contains xsl:map, xsl:array, xsl:select,
  xsl:map-entry, xsl:array-member, xsl:record -->
  

  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a">
      <xsl:map>
        <xsl:map-entry key="2">4</xsl:map-entry>
      </xsl:map>
    </xsl:variable>
    
    <xsl:variable name="b">
      <xsl:text>[</xsl:text>
      <xsl:map>
        <xsl:map-entry key="2">4</xsl:map-entry>
      </xsl:map>
      <xsl:text>]</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="c">
      <xsl:array>
        <xsl:array-member>1</xsl:array-member>
        <xsl:array-member>2</xsl:array-member>
      </xsl:array>
    </xsl:variable>
    
    <xsl:variable name="d">
      <xsl:array/>
      <xsl:array/>
    </xsl:variable>
    
    <xsl:variable name="e">
      <xsl:select>current-date()</xsl:select>
      <xsl:select>current-dateTime()</xsl:select>
    </xsl:variable>
    
    <xsl:variable name="f">
      <xsl:map-entry key="'a'" select="'b'"/>
    </xsl:variable>
    
    <xsl:variable name="g">
      <xsl:array-member select="1 to 5"/>
    </xsl:variable>
    
    <xsl:variable name="h">
      <xsl:record a="1" b="2" c="3"/>
    </xsl:variable>
    
    <out result="{every $z in ($a, $b, $c, $d, $e, $f, $g, $h) satisfies not($z instance of document-node())}"
         a="{$a instance of document-node()}"
         b="{$b instance of document-node()}"
         c="{$c instance of document-node()}"
         d="{$d instance of document-node()}"
         e="{$e instance of document-node()}"
         f="{$f instance of document-node()}"
         g="{$g instance of document-node()}"
         h="{$h instance of document-node()}"
    />
  </xsl:template>

</xsl:stylesheet>
