<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes=" xs"
    version="4.0">
  
  <!-- streaming, xsl:if as child of xsl:source-document -->
  
  <xsl:strip-space elements="*"/>
  
    
  <xsl:template name="main">
    <out>
      <xsl:source-document streamable="yes" href="../docs/big-transaction-content.xml">
        <xsl:for-each select="account/transaction[position()=(1 to 10)]">
          <t><xsl:if test="string(@date) = '2007-01-01'" then="value/@amount" else="'-'"/></t>
        </xsl:for-each>
      </xsl:source-document>
    </out>  
  </xsl:template> 

       
</xsl:transform>

