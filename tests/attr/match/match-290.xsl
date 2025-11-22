<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <!-- Purpose: Test default priority of schema-element($name). Should be 0.25. -->

   <xsl:import-schema schema-location="match-builtin.xsd"/>
   
   <xsl:template match="doc-match" priority="0.26">
      <one>
         <xsl:next-match/>
      </one>
   </xsl:template>
   
   <xsl:template match="doc-match" priority="0.24">
      <three/>
   </xsl:template>

   <xsl:template match="schema-element(doc-match)">
      <two>
         <xsl:next-match/>
      </two>
   </xsl:template>

   
</xsl:transform>
