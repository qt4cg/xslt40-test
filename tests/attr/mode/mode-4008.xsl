<?xml version="1.0"?> 


<!-- mode on-no-match=shallow-copy-all --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
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
     <xsl:apply-templates select="parse-json($data)"/>
  </xsl:template>
  
  <xsl:template match="record(Note)"/>
 
    
</xsl:stylesheet>