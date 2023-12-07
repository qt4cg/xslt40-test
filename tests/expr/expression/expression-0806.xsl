<?xml version="1.0"?>

<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" >

<!-- Exercise Saxon's optimization that converts generate-id() comparisons to "is" tests in a boolean context-->
<?spec xslt#generate-id?>

<xsl:variable name="doc">
    <doc>
        <elem>
            <a/>
            <b/>
            <c/>
            <d/>
        </elem>
    </doc>
</xsl:variable>

<xsl:template name="main">
    <result
        A="{'OK'[generate-id($doc//a) = generate-id($doc//a)]}"
        B="{'OK'[generate-id($doc//a) = generate-id($doc//b)]}"
        C="{'OK'[generate-id($doc//a) = generate-id($doc//ZZZ)]}"
        D="{'OK'[generate-id($doc//ZZZ) = generate-id($doc//YYY)]}"
        A1="{'OK'[generate-id($doc//a) eq generate-id($doc//a)]}"
        B1="{'OK'[generate-id($doc//a) eq generate-id($doc//b)]}"
        C1="{'OK'[generate-id($doc//a) eq generate-id($doc//ZZZ)]}"
        D1="{'OK'[generate-id($doc//ZZZ) eq generate-id($doc//YYY)]}"/>
</xsl:template>

</xsl:stylesheet>
