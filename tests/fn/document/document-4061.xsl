<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xs" version="4.0">
   <!-- Purpose: xsl:select document($uri-sequence, {'base-uri': base-iri($base-node)) function. Variant of document-0104 for XSLT 4.0 -->

   <xsl:variable name="ea" select="/doc/str1/@href" as="xs:anyURI"/>

   <xsl:variable name="doc" select="/doc/str3/@href" as="xs:anyURI"/>

   <xsl:strip-space elements="*"/>
   
   <xsl:import-schema schema-location="bib.xsd"/>

   <xsl:template name="t40-61">
      <xsl:note>Options on fn:document - schema validation</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'xsd-validation':'strict'}) ! count(.//schema-element(book))</xsl:select>
      </out>
      <result>
         <assert-eq>4</assert-eq>
      </result>
   </xsl:template>
   
   <xsl:template name="t40-62">
      <xsl:note>Options on fn:document - schema validation</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'xsd-validation':'lax'}) ! count(.//schema-element(book))</xsl:select>
      </out>
      <result>
         <assert-eq>4</assert-eq>
      </result>
   </xsl:template>
   
   <xsl:template name="t40-63">
      <xsl:note>Options on fn:document - schema validation</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'xsd-validation':'skip'}) ! count(.//schema-element(book))</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-64">
      <xsl:note>Options on fn:document - schema validation</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'xsd-validation':'type Q{}bibType'}) ! count(.//schema-element(book))</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-65">
      <xsl:note>Options on fn:document - schema validation - schema-location</xsl:note>
      <out>
         <xsl:select>document("bib-with-schema-location.xml", {'xsd-validation':'strict', 'use-xsi-schema-location':true()})
             /node-type-annotation(*)?name</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-66">
      <xsl:note>Options on fn:document - schema validation - schema-location</xsl:note>
      <out>
         <xsl:select>document("bib-with-schema-location.xml", {'xsd-validation':'strict', 'use-xsi-schema-location':false()})
             /node-type-annotation(*)?name</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-67">
      <xsl:note>Options on fn:document - schema validation - schema-location absent</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'xsd-validation':'strict'})
             /node-type-annotation(*)?name</xsl:select>
      </out>
      <result>
         <error code="FODC0002"/>
      </result>
   </xsl:template>


</xsl:transform>
