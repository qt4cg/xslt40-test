<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map">
    <xsl:template name="xsl:initial-template">
        <out>
            <one>
                <xsl:variable as="map(*)" name="transform-options">
                    <xsl:map>
                        <xsl:map-entry key="'delivery-format'" select="'raw'" />
                        <xsl:map-entry key="'enable-messages'" select="true()" />
                        <xsl:map-entry key="'stylesheet-location'">transform-011a.xsl</xsl:map-entry>
                        <xsl:map-entry key="'global-context-item'" select="'first-message'"/>
                        <xsl:map-entry key="'initial-template'"
                            select="QName('http://www.w3.org/1999/XSL/Transform', 'xsl:initial-template')" />
                    </xsl:map>
                </xsl:variable>
                <xsl:sequence select="transform($transform-options)?ignore"/>
            </one>
            <two>
                <xsl:variable as="map(*)" name="transform-options">
                    <xsl:map>
                        <xsl:map-entry key="'delivery-format'" select="'raw'" />
                        <xsl:map-entry key="'enable-messages'" select="false()" />
                        <xsl:map-entry key="'stylesheet-location'">transform-011a.xsl</xsl:map-entry>
                        <xsl:map-entry key="'global-context-item'" select="'second-message'"/>
                        <xsl:map-entry key="'initial-template'"
                            select="QName('http://www.w3.org/1999/XSL/Transform', 'xsl:initial-template')" />
                    </xsl:map>
                </xsl:variable>
                <xsl:sequence select="transform($transform-options)?ignore"/>
            </two>
            <three>
                <xsl:variable as="map(*)" name="transform-options">
                    <xsl:map>
                        <xsl:map-entry key="'delivery-format'" select="'raw'" />
                        <xsl:map-entry key="'stylesheet-location'">transform-011a.xsl</xsl:map-entry>
                        <xsl:map-entry key="'global-context-item'" select="'third-message'"/>
                        <xsl:map-entry key="'initial-template'"
                            select="QName('http://www.w3.org/1999/XSL/Transform', 'xsl:initial-template')" />
                    </xsl:map>
                </xsl:variable>
                <xsl:sequence select="transform($transform-options)?ignore"/>
            </three>
        </out>
        <xsl:variable as="map(*)" name="transform-options">
            <xsl:map>
                <xsl:map-entry key="'delivery-format'" select="'raw'" />
                <xsl:map-entry key="'enable-messages'" select="true()" />
                <xsl:map-entry key="'stylesheet-location'">transform-011a.xsl</xsl:map-entry>
                <xsl:map-entry key="'initial-template'"
                    select="QName('http://www.w3.org/1999/XSL/Transform', 'xsl:initial-template')" />
            </xsl:map>
        </xsl:variable>
        <xsl:variable name="result" select="transform($transform-options)"/>
        <result>
            <primary>
                <xsl:sequence select="$result?output"/>
            </primary>
        </result>
    </xsl:template>
</xsl:stylesheet>

