<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test of xsl:next-match where the same stylesheet is both imported and included. 
  				Verifies that imported template is executed last even if it's priority is higher 
  				than the primary template, while included and primary templates are compared based 
  				on priorities.  -->

   <xsl:import href="impwparam8.xsl"/>

   <xsl:include href="impwparam8.xsl"/>

   <xsl:template match="doc">
      <out>
         <xsl:apply-templates select="*">
            <xsl:with-param name="p1" select="'top'"/>
         </xsl:apply-templates>
      </out>
   </xsl:template>

   <xsl:template match="tag">
      <xsl:param name="p1" select="'fallback'"/>
      <main-t>
         <xsl:value-of select="$p1"/>
      </main-t>
      <div>
         <xsl:next-match>
    	       <xsl:with-param name="p1" select="'primary template'"/>
         </xsl:next-match>
      </div>
   </xsl:template>

   <xsl:template match="bag">
	     <bag/>
   </xsl:template>
</xsl:transform>
