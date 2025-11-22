<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:my="http://www.example.com/ns/match/var"
   xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
   exclude-result-prefixes="my xs" version="2.0">
   <!-- Purpose: Test of default priority of schema-attribute($name) : should be 0.25.-->

   <xslt:import-schema namespace="http://www.example.com/ns/match/var"
      schema-location="variousTypesSchemaMatch.xsd"/>

   <xslt:template match="/">
      <out>
         <xslt:apply-templates select="//@*"/>
      </out>
   </xslt:template>

   <xslt:template match="schema-attribute(my:specialPart)">
      <xslt:element name="B">
         <xslt:next-match/>
      </xslt:element>
   </xslt:template>
   
   <xslt:template match="@my:specialPart" priority="0.24">
      <xslt:element name="C">
         <xslt:next-match/>
      </xslt:element>
   </xslt:template>
   
   <xslt:template match="@my:specialPart" priority="0.26">
      <xslt:element name="A">
         <xslt:next-match/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="@*"/>
 
</xslt:transform>
