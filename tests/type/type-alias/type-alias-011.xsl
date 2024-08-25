<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:dt="http://saxon.sf.net/dateTime"
   exclude-result-prefixes="xs dt"
   expand-text="yes"
>
 

  <xsl:item-type name="dt:instant" as="(xs:date | xs:time | xs:dateTime | xs:string)"/>
 
  <xsl:function name="dt:format" as="xs:string">
    <xsl:param name="in" as="dt:instant"/>
    <xsl:param name="fmt" as="xs:string"/>
    <xsl:choose>
      <xsl:when test="$in instance of xs:date">
        <xsl:sequence select="format-date($in, $fmt)"/>
      </xsl:when>
      <xsl:when test="$in instance of xs:dateTime">
        <xsl:sequence select="format-dateTime($in, $fmt)"/>
      </xsl:when>
      <xsl:when test="$in instance of xs:time">
        <xsl:sequence select="format-time($in, $fmt)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:sequence select="dt:format($in cast as (xs:date | xs:time | xs:dateTime), $fmt)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>
  
  <xsl:variable name="now" select="xs:dateTime('2018-09-20T12:30:15')"/>
  <xsl:variable name="today" select="xs:date($now)"/>
  <xsl:variable name="when" select="xs:time($now)"/>
  <xsl:variable name="then" select="'1900-01-01'"/>
  

  <xsl:template name="xsl:initial-template">
   <out>
     <w>{dt:format($today, "[D] [M] [Y]")}</w>
     <x>{dt:format($now, "[D] [M] [Y]")}</x>
     <y>{dt:format($when, "[H] [m] [s]")}</y>
     <z>{dt:format($then, '[D] [M] [Y]')}</z>
   </out>
  </xsl:template>  

</xsl:stylesheet>
