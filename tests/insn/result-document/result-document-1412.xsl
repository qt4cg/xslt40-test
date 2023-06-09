<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:t="http://www.w3.org/1999/XSL/Transform"
   version="4.0">

   <t:param name="indent" select="false()" static="yes"/>
   <t:param name="escape-solidus" select="false()" static="yes"/>

   <!-- Purpose: Test simple JSON serialization, escape-solidus="no" -->

   <t:template name="t:initial-template">
      <t:variable name="maps" as="map(*)*">
         <t:for-each select="1 to 5">
            <t:map>
               <t:map-entry key="'index'">
                  <t:sequence select="'yes/no'"/>
               </t:map-entry>
            </t:map>
         </t:for-each>
      </t:variable>
      <t:result-document method="json" _indent="{$indent}" escape-solidus="no">
         <t:sequence select="array{$maps}"/>
      </t:result-document>
   </t:template>
</t:transform>
