<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a><xsl:text>  </xsl:text></a>
         <b><xsl:text>  <xsl:comment/>  </xsl:text></b>
         <c><xsl:text>  <x/>  </xsl:text></c>
         <d><xsl:text>  {42}  </xsl:text></d>
         <e><xsl:text>  <xsl:text>42</xsl:text>  </xsl:text></e>
         <f xml:space="preserve"><xsl:text>  </xsl:text></f>
      </out>
   </xsl:template>
   
</xsl:transform>