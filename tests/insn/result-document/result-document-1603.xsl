<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema" version="4.0">

   <!-- Purpose: Test XML serialization with canonical="yes" -->

   <t:template name="t:initial-template">
      <t:result-document  method="xml" canonical="yes">
         <a z="3" x="2" y="1"/>
      </t:result-document>
   </t:template>
</t:transform>
