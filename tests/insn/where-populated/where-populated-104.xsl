<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.infrabel.be/Artemis/Timetable/20080711"
    version="3.0">
    
    <xsl:template name="xsl:initial-template">
        <xsl:where-populated>
            <xsl:element name="trains">
               <train>stuff</train> 
            </xsl:element>
        </xsl:where-populated>
    </xsl:template>
    
</xsl:stylesheet>