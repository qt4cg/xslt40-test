<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<?spec fo#func-round-half-to-even?>
<!-- PURPOSE:  Test of round-half-to-even on doubles. -->

<xsl:template match="doc">
<out>
<a b="{round-half-to-even(120.0e0)}" c="{round-half-to-even(0.0e0)}" d="{round-half-to-even(-3.0e0)}"/>
<a b="{round-half-to-even(120.0e0, 2)}" c="{round-half-to-even(0.0e0, 2)}" d="{round-half-to-even(-3.0e0, 2)}"/>
<a b="{round-half-to-even(120.0e0, -2)}" c="{round-half-to-even(0.0e0, -2)}" d="{round-half-to-even(-3.0e0, -2)}"/>
<a b="{round-half-to-even(180.0e0, -2)}" c="{round-half-to-even(150.0e0, -2)}" d="{round-half-to-even(250.0e0, -2)}"/>
<a b="{round-half-to-even(-120.0e0, -2)}" c="{round-half-to-even(-150.0e0, -2)}" d="{round-half-to-even(-250.0e0, -2)}"/>
<a b="{round-half-to-even(180.0180e0, 2)}" c="{round-half-to-even(150.0150e0, 2)}" d="{round-half-to-even(250.0250e0, 2)}"/>
<a b="{round-half-to-even(-120.0120e0, 2)}" c="{round-half-to-even(-150.0150e0, 2)}" d="{round-half-to-even(-250.0250e0, 2)}"/>
</out>
</xsl:template>
</xsl:stylesheet>

<!-- Notes:
   xs:double 150.015e0 = xs:decimal 150.0149999999999863575794734060764312744140625
   xs:double 250.025e0 = xs:decimal 250.025000000000005684341886080801486968994140625
-->