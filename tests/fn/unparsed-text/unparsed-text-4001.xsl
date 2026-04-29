<?xml version="1.0" encoding="iso-8859-1"?> 
<xsl:transform version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- test unparsed-text() with normalize-newlines option -->


<xsl:template name="xsl:initial-template">
   <out>
     <xsl:variable name="push-one">
       <xsl:value-of select="unparsed-text('Brahms-CRLF-UTF8.txt', {'encoding':'UTF-8', 'normalize-newlines':true()})"/>
     </xsl:variable>
     <xsl:variable name="push-two">
       <xsl:value-of select="unparsed-text('Brahms-CRLF-UTF8.txt', {'encoding':'UTF-8', 'normalize-newlines':false()})"/>
     </xsl:variable>
     <push one="{string-length($push-one)}" two="{string-length($push-two)}"/>
     <xsl:variable name="pull-one" select="unparsed-text('Brahms-CRLF-UTF8.txt', {'encoding':'UTF-8', 'normalize-newlines':true()})"/>
     <xsl:variable name="pull-two" select="unparsed-text('Brahms-CRLF-UTF8.txt', {'encoding':'UTF-8', 'normalize-newlines':false()})"/>
     <pull one="{string-length($pull-one)}" two="{string-length($pull-two)}"/>
   </out>
</xsl:template>


</xsl:transform>