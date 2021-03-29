<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<?error ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

<!-- Test extension instruction calling template with different (correct) atomic parameter types. -->

<xsl:param name="two" select="'2'"/> 
 
<xsl:template match="doc">
   <out>
      <ext:template p1="{$two}001-01-01"
         p2="{$two}{$two}{$two}"
         p3="1.{$two}5"
         p4="1.{$two}e3"
         p5="-{$two}"/>
   </out>
</xsl:template>
 
<xsl:template name="ext:template">
   <xsl:param name="p1" as="xs:date"/>
   <xsl:param name="p2" as="xs:string"/>
   <xsl:param name="p3" as="xs:double"/>
   <xsl:param name="p4" as="xs:numeric"/>
   <xsl:param name="p5" as="xs:integer"/>
   <out>
      <values p1="{$p1}" p2="{$p2}" p3="{$p3}" p4="{$p4}" p5="{$p5}"/>
      <types p1="{$p1 instance of xs:date}" p2="{$p2 instance of xs:string}" p3="{$p3 instance of xs:double}" p4="{$p4 instance of xs:numeric}" p5="{$p5 instance of xs:integer}"/>
   </out>
</xsl:template>
 
</xsl:stylesheet>
