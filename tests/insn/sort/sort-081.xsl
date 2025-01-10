<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" 
   xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" expand-text="true">
   <!-- Composite sort keys in 4.0.-->
   
   <xsl:variable name="in">
      <e>A walk in the park</e>
      <e>The last of the summer wine</e>
      <e>A nice cup of tea</e>
      <e>The end</e>
      <e>The  end of civilization</e>
      <e></e>
   </xsl:variable>

   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:for-each select="$in/e">
            <xsl:sort select="tokenize(.)"/>
            <item>{.}</item>
         </xsl:for-each>
      </out>
   </xsl:template>

</xsl:transform>
