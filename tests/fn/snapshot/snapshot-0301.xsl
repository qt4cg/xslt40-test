<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" expand-text="1">

  <!-- Tests the result of navigation within a document created using the snapshot function,
       compared with the same navigation within a document that should be identical to
       the result of the snapshot function.
  
       The same pivot node is used for the snapshot in each cases, but the various tests
       exercise navigation (using all available axes) from different nodes within
       the snapshot, determined by a static parameter.
  -->

  <xsl:strip-space elements="*"/>
  
  <xsl:param name="origin" static="yes" required="yes"/>
  
  <xsl:variable name="doc1" 
    select="snapshot(doc('http://www.w3.org/fots/snapshot/doc1.xml')//pivot)/root()"/>
  <xsl:variable name="doc2" 
    select="doc('http://www.w3.org/fots/snapshot/doc2.xml')"/>
  
  <xsl:variable name="n1" _select="$doc1{$origin}"/>
  <xsl:variable name="n2" _select="$doc2{$origin}"/>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="results" as="element()*">
      <a actual="{count($n1/ancestor::node())}" expected="{count($n2/ancestor::node())}"/>
      <b actual="{count($n1/ancestor-or-self::node())}" expected="{count($n2/ancestor-or-self::node())}"/>
      <c actual="{count($n1/ancestor::*)}" expected="{count($n2/ancestor::*)}"/>
      <d actual="{count($n1/ancestor-or-self::*)}" expected="{count($n2/ancestor-or-self::*)}"/>
      <e actual="{count($n1/descendant::*)}" expected="{count($n2/descendant::*)}" x="{$n1/descendant::*/name()}" y="{$n2/descendant::*/name()}"/>
      <f actual="{count($n1/descendant::node())}" expected="{count($n2/descendant::node())}"/>
      <g actual="{count($n1/descendant-or-self::*)}" expected="{count($n2/descendant-or-self::*)}"/>
      <h actual="{count($n1/descendant-or-self::node())}" expected="{count($n2/descendant-or-self::node())}"/>
      <i actual="{count($n1/following::node())}" expected="{count($n2/following::node())}"/>
      <j actual="{count($n1/following::*)}" expected="{count($n2/following::*)}"/>
      <m actual="{count($n1/following-sibling::node())}" expected="{count($n2/following-sibling::node())}"/>
      <n actual="{count($n1/following-sibling::*)}" expected="{count($n2/following-sibling::*)}"/>
      <q actual="{count($n1/namespace::*)}" expected="{count($n2/namespace::*)}"/>
      <r actual="{count($n1/parent::node())}" expected="{count($n2/parent::node())}"/>
      <s actual="{count($n1/parent::*)}" expected="{count($n2/parent::*)}"/>
      <t actual="{count($n1/preceding::node())}" expected="{count($n2/preceding::node())}"/>
      <u actual="{count($n1/preceding::*)}" expected="{count($n2/preceding::*)}"/>
      <x actual="{count($n1/preceding-sibling::node())}" expected="{count($n2/preceding-sibling::node())}"/>
      <y actual="{count($n1/preceding-sibling::*)}" expected="{count($n2/preceding-sibling::*)}"/> 
      <B actual="{count($n1/ancestor::*/@*)}" expected="{count($n2/ancestor::*/@*)}"/>
      <C actual="{count($n1/descendant::*/@*)}" expected="{count($n2/descendant::*/@*)}"/>
    </xsl:variable>
    <out>
      <xsl:copy-of select="$results[@actual != @expected]"/>
    </out>  
  </xsl:template>



</xsl:stylesheet>