<?xml version="1.0"?> 


<!-- mode on-no-match=shallow-copy-all --> 

<!-- stylesheet to delete all Note entries from the JSON input -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="#all">

  <xsl:mode on-no-match="shallow-copy-all"/>
  <xsl:output method="json" indent="no"/>
  
  <xsl:variable name="data" as="xs:string">
  [
    { "Title": "Computer Architecture",
      "Authors": ["Enid Blyton", {"Note": "possibly misattributed"}],
      "Category": "Computers",
      "Price": 42.60
    },
    { "Title": "How to Win Elections",
      "Authors": ["Donald Trump", "Boris Johnson"],
      "Category": "Politics",
      "Price": 56.00,
      "Note": "out of print"
    },
    { "Title": "How to Explore Outer Space with Binoculars",
      "Authors": ["Bruce Betts", "Erica Colon"],
      "Category": "Science",
      "Price": 10.40
    }
  ]
  </xsl:variable>
 
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="result" as="array(map(*))">
      <xsl:apply-templates select="parse-json($data)"/>
    </xsl:variable>
    <!-- Expected:
      [{"Authors":["Enid Blyton"],"Price":42.6,"Title":"Computer Architecture","Category":"Computers"},
       {"Authors":["Donald Trump","Boris Johnson"],"Price":56,"Title":"How to Win Elections","Category":"Politics"},
       {"Authors":["Bruce Betts","Erica Colon"],"Price":10.4,"Title":"How to Explore Outer Space with Binoculars","Category":"Science"}]
    -->
    <out ok0='{array:size($result)=3}'
         ok1='{deep-equal($result?1, map{"Authors":["Enid Blyton"],
                                        "Price":42.6,
                                        "Title":"Computer Architecture",
                                        "Category":"Computers"})}'
         ok2='{deep-equal($result?2, map{"Authors":["Donald Trump","Boris Johnson"],
                                        "Price":56,
                                        "Title":"How to Win Elections",
                                        "Category":"Politics"})}'
         ok3='{deep-equal($result?3, map{"Authors":["Bruce Betts","Erica Colon"],
                                        "Price":10.4,
                                        "Title":"How to Explore Outer Space with Binoculars",
                                        "Category":"Science"})}'/>
  </xsl:template>
  
  <xsl:template match="record(Note)"/>
  
  <xsl:template match="record(value as record(Note))"/>
  
  <xsl:template match="type(xs:double)">
    <xsl:sequence select="round(xs:decimal(.), 2)"/>
  </xsl:template>
 
    
</xsl:stylesheet>