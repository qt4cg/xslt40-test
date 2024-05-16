<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <?spec xslt#analyze-string?>
  
  
  <xsl:template match="/">
    <out>
      <xsl:analyze-string select="'abcde'" regex="#start#(.)#then#(.)#then#(.)#then#(.)#then#(.)#end" flags="c">
       <xsl:matching-substring>
         <xsl:variable name="re1" select="regex-group#1"/>
         <xsl:analyze-string select="'zyxwv'" regex="(.)(.)(.)(.)(.)">
           <xsl:matching-substring>
             <xsl:sequence select="$re1(3) || regex-group(3)"/>
           </xsl:matching-substring>
         </xsl:analyze-string>
       </xsl:matching-substring>
       <xsl:non-matching-substring select="."/>
      </xsl:analyze-string>
    </out>
  </xsl:template>

</xsl:stylesheet>