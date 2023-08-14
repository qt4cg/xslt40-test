<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Saxon bug 6165. -->
   
   <t:mode on-multiple-match="fail"/>

   <t:variable name="in" as="element(*)">
      <name nodeType="NameExpr"/>
   </t:variable>

   <t:template match="name | *[@nodeType='Name']">
      <one/>
   </t:template>

   <t:template match="*[@nodeType='NameExpr']">
      <two/>
   </t:template>
   
   <t:template match="/">
      <out><t:apply-templates select="$in"/></out>
   </t:template>
</t:transform>
