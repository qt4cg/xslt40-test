<xsl:package name="http://www.w3.org/xslt30tests/use-package-291" package-version="1.0.0"
    version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

    <!-- tests that an error is raised when attribute archive-type is present 
        without the attribute path-in-archive-->

    <xsl:use-package name="http://www.w3.org/xslt30tests/use-package-base-004"
        package-version="2.0.0">
        <xsl:package-location is-priority="true" archive-type="ZIP"
            href="package-location-base-004b.xsl"/>
    </xsl:use-package>

    <xsl:template name="main" visibility="public">
        <package-version>
            <xsl:value-of select="$package-version"/>
        </package-version>
    </xsl:template>

</xsl:package>
