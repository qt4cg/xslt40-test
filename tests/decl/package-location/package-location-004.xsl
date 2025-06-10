<xsl:package name="http://www.w3.org/xslt30tests/use-package-001" package-version="1.0.0"
  version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/use-package-base-001" exclude-result-prefixes="xs p">

  <xsl:use-package name="http://www.w3.org/xslt30tests/package-location-base-001"
    package-version="1.0.0">
    <xsl:package-location href="package-location-base-001a.sef" format="sef"/>
  </xsl:use-package>

  <!-- Call public function defined in used package -->

  <xsl:template name="main" visibility="public">
    <out p="{tokenize(p:static-base-uri(), '/')[position() ge (last() - 1)] => string-join('/')}"/>
  </xsl:template>

</xsl:package>
