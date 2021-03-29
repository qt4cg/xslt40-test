<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<?error ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

<!-- Test extension instruction calling template with boolean parameters. -->

<xsl:param name="e" select="'e'"/> 
<xsl:param name="o" select="'o'"/> 
 
<xsl:template match="doc">
      <ext:template p1=" y{$e}s "
         p2=" tru{$e} "
         p3=" {string-length($e)} "
         p4=" n{$o}"
         p5=" fals{$e} "
         p6=" {1 - string-length($e)} "/>
       
   
</xsl:template>
 
<xsl:template name="ext:template">
   <xsl:param name="p1" as="xs:boolean"/>
   <xsl:param name="p2" as="xs:boolean"/>
   <xsl:param name="p3" as="xs:boolean"/>
   <xsl:param name="p4" as="xs:boolean"/>
   <xsl:param name="p5" as="xs:boolean"/>
   <xsl:param name="p6" as="xs:boolean"/>
   <out p1="{$p1}" p2="{$p2}" p3="{$p3}" p4="{$p4}" p5="{$p5}" p6="{$p6}"/>
</xsl:template>
 
</xsl:stylesheet>
