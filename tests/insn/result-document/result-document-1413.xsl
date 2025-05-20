<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:t="http://www.w3.org/1999/XSL/Transform"
   version="4.0">


   <!-- Purpose: Test simple JSON serialization, json-lines="yes" -->

   <t:template name="t:initial-template">
      <t:result-document method="json" json-lines="yes">
         <t:map>
            <t:map-entry key="'a'" select="'x'"/>
            <t:map-entry key="'b'" select="'y'"/>
            <t:map-entry key="'c'" select="['z']"/>
         </t:map>
         <t:map>
            <t:map-entry key="'a'" select="'p'"/>
            <t:map-entry key="'b'" select="'q'"/>
            <t:map-entry key="'c'" select="['r']"/>
         </t:map>
      </t:result-document>
   </t:template>
</t:transform>
