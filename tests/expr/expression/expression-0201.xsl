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
      <A result="{$doc//a &lt;&lt; $doc//b}" expect="true"/>
      <B result="{$doc//a &gt;&gt; $doc//b}" expect="false"/>
      <C result="{$doc//b &lt;&lt; $doc//a}" expect="false"/>
      <D result="{$doc//c &gt;&gt; $doc//a}" expect="true"/>
      <E result="{$doc//c is $doc//a}" expect="false"/>
      <F result="{$doc//c is $doc//*[3]}" expect="true"/>
    </out>
</xsl:template>
 
</xsl:stylesheet>
