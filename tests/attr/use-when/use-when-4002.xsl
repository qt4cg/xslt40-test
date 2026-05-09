<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="xs"
    version="4.0">

    <!-- 
        Purpose: use "declare namespace" within use-when
    -->


    <xsl:template name="xsl:initial-template">
        <result>
            <row xsl:use-when="declare namespace Φ = 'http://www.w3.org/2005/xpath-functions'; Φ:true()">42</row>
        </result>
    </xsl:template>
</xsl:transform>
