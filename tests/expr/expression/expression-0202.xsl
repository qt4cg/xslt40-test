<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">


  <!-- PURPOSE: Test of node comparisons -->
<?spec fo#func-lang?>

<xsl:template name="main">
  <xsl:variable name="doc">
    <doc>
      <a/>
      <b/>
      <c/>
    </doc>
  </xsl:variable> 
    <out>
      <A result="{$doc//a precedes $doc//b}" expect="true"/>
      <B result="{$doc//a follows $doc//b}" expect="false"/>
      <C result="{$doc//b precedes $doc//a}" expect="false"/>
      <D result="{$doc//c follows $doc//a}" expect="true"/>
      <E result="{$doc//c is-not $doc//a}" expect="true"/>
      <F result="{$doc//c is-not $doc//*[3]}" expect="false"/>
      <G result="{$doc//a precedes-or-is $doc//b}" expect="true"/>
      <H result="{$doc//a follows-or-is $doc//b}" expect="false"/>
      <I result="{$doc//b precedes-or-is $doc//b}" expect="true"/>
      <J result="{$doc//c follows-or-is $doc//c}" expect="true"/>
    </out>
</xsl:template>
 
</xsl:stylesheet>
