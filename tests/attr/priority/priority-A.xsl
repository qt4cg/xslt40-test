<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
   
   <!-- If the supplied $match pattern has the $expected priority, then
        processing the item $select will output <A><B><C/></B></A> -->

   <xsl:param name="match" as="xs:string" static="yes"/>
   <xsl:param name="expected" as="xs:decimal" static="yes"/>
   <xsl:param name="select" as="xs:string" static="yes"/>
   
   <xsl:template _match="{$match}" _priority="{$expected - xs:decimal(0.000000001)}">
      <C><xsl:next-match/></C>
   </xsl:template>
   
   <xsl:template _match="{$match}">
      <B><xsl:next-match/></B>
   </xsl:template>
   
   <xsl:template _match="{$match}" _priority="{$expected + xs:decimal(0.000000001)}">
      <A><xsl:next-match/></A>
   </xsl:template>
   
   <xsl:template name="xsl:initial-template">
      <xsl:apply-templates _select="{$select}"/>
   </xsl:template>
   
   <xsl:variable name="e" as="element(*)"><e/></xsl:variable>
   
</xsl:transform>
