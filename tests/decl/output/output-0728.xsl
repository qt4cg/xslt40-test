<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:t="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0">

   <t:output method="json"/>

   <!-- Purpose: Test JSON serialization, maps with escape-solidus=no -->

   <t:template name="t:initial-template">
      <t:map>
         <t:map-entry key="'a'">
            <t:sequence select="1"/>
         </t:map-entry>
         <t:map-entry key="'b'">
            <t:sequence select="2"/>
         </t:map-entry>
         <t:map-entry key="'c'">
            <t:sequence select="map{'d':4}"/>
         </t:map-entry>
      </t:map>
   </t:template>
</t:transform>
