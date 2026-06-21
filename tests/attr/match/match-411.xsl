<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:array = "http://www.w3.org/2005/xpath-functions/array"
  exclude-result-prefixes="xs array" expand-text="yes">
  
  <!-- Test JNode patterns -->
  
  <xsl:variable name="bookstore" as="xs:string" expand-text="no">
    {"store": {
      "book": [
        {
          "category": "reference",
          "author": "Nigel Rees",
          "title": "Sayings of the Century",
          "price": 8.95
        },
        {
          "category": "fiction",
          "author": "Evelyn Waugh",
          "title": "Sword of Honour",
          "price": 12.99
        },
        {
          "category": "fiction",
          "author": "Herman Melville",
          "title": "Moby Dick",
          "isbn": "0-553-21311-3",
          "price": 8.99
        },
        {
          "category": "fiction",
          "author": "J. R. R. Tolkien",
          "title": "The Lord of the Rings",
          "isbn": "0-395-19395-8",
          "price": 22.99
        }
    ],
    "bicycle": {
      "color": "red",
      "price": 399
    }
   }
  }
  </xsl:variable>
  
  <xsl:variable name="root" select="jtree(parse-json($bookstore))"/>



  <xsl:template name="xsl:initial-template">
    <out>
      <one><xsl:apply-templates select="$root"/></one>
      <two><xsl:apply-templates select="$root/store"/></two>
      <three><xsl:apply-templates select="$root/store/book"/></three>
      <four><xsl:apply-templates select="$root/store/book/*[?author='Nigel Rees']"/></four>
      <five><xsl:apply-templates select="$root//bicycle"/></five>
      <six><xsl:apply-templates select="$root//color"/></six>
    </out>
  </xsl:template>
  
  <xsl:template match="jnode(*, {'store'})">
    <xsl:select>1</xsl:select>
  </xsl:template>
  
  <xsl:template match="jnode('store', {'book': array({*}), 'bicycle'})">
    <xsl:select>2</xsl:select>
  </xsl:template>

  <xsl:template match="jnode('book', array({*}))">
    <xsl:select>3</xsl:select>
  </xsl:template>
  
  <xsl:template match="jnode(*, {'category', 'author', *})">
    <xsl:select>4</xsl:select>
  </xsl:template>
  
  <xsl:template match="jnode(*, {'color', 'price'})">
    <xsl:select>5</xsl:select>
  </xsl:template>
  
  <xsl:template match="jnode('color', ~xs:string)">
    <xsl:select>6</xsl:select>
  </xsl:template>


</xsl:transform>
