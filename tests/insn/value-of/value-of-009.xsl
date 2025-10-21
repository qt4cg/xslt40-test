<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a><xsl:value-of>  </xsl:value-of></a>
         <b><xsl:value-of>  <xsl:comment/>  </xsl:value-of></b>
         <c><xsl:value-of>  <x/>  </xsl:value-of></c>
         <d><xsl:value-of>  {42}  </xsl:value-of></d>
         <e><xsl:value-of>  <xsl:value-of>42</xsl:value-of>  </xsl:value-of></e>
         <f xml:space="preserve"><xsl:value-of>  </xsl:value-of></f>
      </out>
   </xsl:template>
   
</xsl:transform>