<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="4.0">
<!-- Purpose: xsl:result-document allows @select in 4.0. -->

   <t:output method="xml" encoding="UTF-8"/>

   <t:template match="/">
      <out>
         <t:result-document href="out.xml" select="//foo">
            <in/>
         </t:result-document>
      </out>
   </t:template>
</t:transform>
