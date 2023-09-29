<?xml version="1.0" encoding="UTF-8"?>
<xsl:package
  name="http://www.w3.org/xslt30-test/accumulator/capture-203"
  package-version="1.0"
  declared-modes="no"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://accum001/"
  exclude-result-prefixes="#all" version="4.0">

  <!-- Stylesheet to produce a glossary using capturing accumulators -->
  
  <!-- The source document is a W3C specification in xmlspec format, containing
    term definitions in the form <termdef term="banana">A soft <termref def="fruit"/></termdef> -->
  
  <!-- This test case shows the essential principles of how to render such a document
    in streaming mode, with an alphabetical glossary of defined terms at the end -->
  
  <xsl:param name="streamable" static="yes" select="'yes'"/>
  
  <xsl:accumulator name="glossary" as="element(termdef)*" initial-value="()" streamable="yes">
    <xsl:accumulator-rule match="termdef" phase="end" capture="yes" select="($value, .)"/>
  </xsl:accumulator>

  <xsl:mode streamable="yes" on-no-match="shallow-skip" use-accumulators="glossary"/>
  
  <xsl:template name="main" visibility="public">
    <xsl:source-document href="xslt.xml" streamable="yes" use-accumulators="glossary">
      <xsl:apply-templates select="."/>
    </xsl:source-document>
  </xsl:template>
  
 <xsl:template match="/">
    <out>
      <!-- First render the body of the document -->
      <xsl:apply-templates/>
      <!-- Now generate the glossary -->
      <table>
        <tbody>
          <xsl:apply-templates select="accumulator-after('glossary')" mode="glossary">
            <xsl:sort select="@term" lang="en"/>
          </xsl:apply-templates>
        </tbody>
      </table>
    </out>
  </xsl:template>
  
  <xsl:template match="div1|inform-div1">
    <div id="{@id}">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!-- Main document processing: just output the headings -->
  
  <xsl:template match="div1/head | inform-div1/head">
    <xsl:attribute name="title" select="."/>
  </xsl:template>
  
  <!-- Glossary processing -->
  
  <xsl:mode name="glossary" streamable="no"/>
  
  <xsl:template match="termdef" mode="glossary">
    <tr>
      <td>
        <xsl:value-of select="@term"/>
      </td>
      <td>
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

</xsl:package>
