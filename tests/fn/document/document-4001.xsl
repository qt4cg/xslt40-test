<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xs" version="4.0">
   <!-- Purpose: xsl:select document($uri-sequence, {'base-uri': base-iri($base-node)) function. Variant of document-0104 for XSLT 4.0 -->

   <xsl:variable name="ea" select="/doc/str1/@href" as="xs:anyURI"/>

   <xsl:variable name="doc" select="/doc/str3/@href" as="xs:anyURI"/>

   <xsl:strip-space elements="*"/>

   <xsl:template name="t40-01">
      <a>
         <xsl:copy-of
            select="document((xs:anyURI('doc02.xml'),xs:anyURI('doc03.xml'),xs:anyURI('doc01.xsl'),xs:anyURI('doc04.xml')), {'base-uri':base-uri(//str1)})//(body[1]|out)"/>
      </a>
   </xsl:template>

   <xsl:template name="t40-02">
      <b>
         <xsl:copy-of select="document(($ea, $doc), //str1)//(body[1]|out)"/>
      </b>
   </xsl:template>

   <xsl:template name="t40-03">
      <c>
         <xsl:copy-of
            select="document((xs:anyURI('doc02.xml'),xs:anyURI(//str2/@href),xs:anyURI(//str3/@href),xs:anyURI('doc04.xml'),$ea), {'base-uri':base-uri(//str1)})//(body[1]|out)"/>
      </c>
   </xsl:template>

   <xsl:template name="t40-04">
      <d>
         <xsl:copy-of
            select="document(subsequence((xs:anyURI('doc02.xml'),xs:anyURI(//str2/@href),//str3/@href,xs:anyURI('doc04.xml'),$ea), 2,1), {'base-uri':base-uri(//str1)})//(body[1]|out)"/>
      </d>
   </xsl:template>
   
   <xsl:template name="t40-10">
      <xsl:note>Options on fn:document - dtd validation, document valid</xsl:note>
      <out result="{exists(document('bib-with-internal-dtd.xml', {'dtd-validation':true()})/*)}"/>
   </xsl:template>
   
   <xsl:template name="t40-11">
      <xsl:note>Options on fn:document - dtd validation requested, no DTD available</xsl:note>
      <out>
         <xsl:select>exists(document("bib.xml", {'dtd-validation':true()})/*)</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-12">
      <xsl:note>Options on fn:document - dtd validation requested, document is invalid</xsl:note>
      <xsl:select>exists(document("bib-invalid.xml", {'dtd-validation':true()})/*)</xsl:select>
      <result>
         <error code="FODC0016"/>
      </result>
   </xsl:template>

   <xsl:template name="t40-12a">
      <xsl:note>Options on fn:document - dtd validation requested, document is invalid</xsl:note>
      <out>
         <xsl:select>exists(document("bib-invalid.xml", {'dtd-validation':true(), 'trusted':true()})/*)</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-13">
      <xsl:note>Options on fn:document - dtd validation, document valid, external DTD, trusted</xsl:note>
      <out>
         <xsl:select>exists(document("bib-with-external-dtd.xml", {'dtd-validation':true(), 'trusted': true()})/*)</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-14">
      <xsl:note>Options on fn:document - dtd validation, document valid, external DTD, trusted=false</xsl:note>
      <xsl:select>exists(document("bib-with-external-dtd.xml", {'dtd-validation':true(), 'trusted': false()})/*)</xsl:select>
      <result>
         <error code="FODC0016"/>
      </result>
   </xsl:template>
   
   
   
   <xsl:template name="t40-30">
      <xsl:note>Options on fn:document - strip-space</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'strip-space-2684':'all'}) ! exists(.//text()[not(normalize-space())])</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-31">
      <xsl:note>Options on fn:document - strip-space</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'strip-space-2684':'none'}) ! exists(.//text()[not(normalize-space())])</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-32">
      <xsl:note>Options on fn:document - strip-space with DTD validation</xsl:note>
      <out>
         <xsl:select>document("bib-with-internal-dtd.xml", {'dtd-validation': true(), 'strip-space-2684':'none'}) ! exists(.//text()[not(normalize-space())])</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-33">
      <xsl:note>Options on fn:document - strip-space with DTD validation</xsl:note>
      <out>
         <xsl:select>document("bib-with-internal-dtd.xml", {'dtd-validation': true(), 'strip-space-2684':'all'}) ! exists(.//text()[not(normalize-space())])</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-40">
      <xsl:note>Options on fn:document - stable</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'stable':true()}) 
              is document("bib.xml", {'stable':true()})</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-41">
      <xsl:note>Options on fn:document - stable</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'stable':true()}) 
              is document("bib.xml", {'stable':false()})</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-42">
      <xsl:note>Options on fn:document - stable</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'stable':false()}) 
              is document("bib.xml", {'stable':false()})</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-43">
      <xsl:note>Options on fn:document - stable</xsl:note>
      <out>
         <xsl:select>document("bib.xml", {'stable':true(), 'strip-space-2684':'all'}) 
              is document("bib.xml", {'stable':true(), 'strip-space-2684':'none'})</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-44">
      <xsl:note>Options on fn:document - stable with xinclude</xsl:note>
      <out>
         <xsl:select>document("bib-with-xinclude.xml", {'stable':true(), 'xinclude':true(), 'trusted':true()})
          is document("bib-with-xinclude.xml", {'stable':true(), 'xinclude':false()}) </xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-45">
      <xsl:note>Options on fn:document - stable with schema validation</xsl:note>
      <out>        
         <xsl:select>document("bib.xml", {'stable':true(), 'xsd-validation':'strict'})
             is document("bib.xml", {'stable':true(), 'xsd-validation':'skip'}) </xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-51">
      <xsl:note>Options on fn:document - xinclude</xsl:note>
      <out>
         <xsl:select>document("bib-with-xinclude.xml", {'xinclude':true(), 'trusted':true()}) ! count(.//book)</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-52">
      <xsl:note>Options on fn:document - xinclude</xsl:note>
      <out>
         <xsl:select>document("bib-with-xinclude.xml", {'xinclude':false()}) ! count(.//book)</xsl:select>
      </out>
   </xsl:template>
   
   <xsl:template name="t40-53">
      <xsl:note>Options on fn:document - xinclude</xsl:note>
      <out>
         <xsl:select>document("bib-with-xinclude.xml") ! count(.//book)</xsl:select>
      </out>
   </xsl:template>
   

</xsl:transform>
