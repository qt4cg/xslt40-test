<?xml version="1.0" encoding="UTF-8"?>

<xsl:package name="http://qt4cg.org/atomic-set"
             package-version="1.0.0"
             xmlns:set="http://qt4cg.org/atomic-set"
             xmlns:map="http://www.w3.org/2005/xpath-functions/map"
             xmlns:xs="http://www.w3.org/2001/XMLSchema">
   
   <xsl:note>
      This package defines a type set:atomic-set which represents
      a set of distinct atomic items. Atomic items are considered
      distinct based on the comparison function fn:atomic-equal.
      
      An instance of an atomic set can be constructed using a function
      call such as set:build((1, 3, 5, 7, 9)).
      
      If $A and $B are instances of set:atomic-set, then they
      can be manipulated using methods including:
      
      $A?size() - returns the number of items in the set
      $A?empty() - returns true if the set is empty
      $A?contains($k) - determines whether $k is a member of the set
      $A?contains-all($B) - returns true if $B is a subset of $A
      $A?values() - returns the items in $A, as a sequence
      $A?add($k) - returns a new atomic set containing an additional item
      $A?remove($k) - returns a new atomic set in which the given item is absent
      $A?union($B) - returns a new atomic set containing the union of $A and $B
      $A?intersect($B) - returns a new atomic set containing the intersection of $A and $B
      $A?except($B) - returns a new atomic set containing the difference of $A and $B
   </xsl:note>
   
   <xsl:record-type name="set:atomic-set" 
                    visibility="public"
                    extensible="yes">
      <xsl:field name="_data" 
                 as="map(xs:anyAtomicType, xs:boolean)"/>
      <xsl:field name="size" 
                 as="%method fn() as xs:integer"/>
      <xsl:field name="empty" 
                 as="%method fn() as xs:boolean"/>
      <xsl:field name="contains" 
                 as="%method fn($value as xs:anyAtomicType) as xs:boolean"/> 
      <xsl:field name="contains-all" 
                 as="%method fn($value as set:atomic-set) as xs:boolean"/> 
      <xsl:field name="add" 
                 as="%method fn($item as xs:anyAtomicType) as set:atomic-set"/> 
      <xsl:field name="remove" 
                 as="%method fn($item as xs:anyAtomicType) as set:atomic-set"/>
      <xsl:field name="union" 
                 as="%method fn($value as set:atomic-set) as set:atomic-set"/>
      <xsl:field name="intersect" 
                 as="%method fn($value as set:atomic-set) as set:atomic-set"/> 
      <xsl:field name="except" 
                 as="%method fn($value as set:atomic-set) as set:atomic-set"/> 
   </xsl:record-type>
   
   <xsl:variable name="DATA" select="'_data'" visibility="private"/>
   
   <xsl:note>
      The private function set:replaceData processes the internal map
      by applying a supplied function, and returns a new atomic set
      with the resulting internal map 
   </xsl:note>
   
   <xsl:function name="set:replaceData" 
                 visibility="private" 
                 as="map(xs:anyAtomicType, xs:boolean)">
      <xsl:param name="input" as="set:atomic-set"/>
      <xsl:param name="update" as="fn(map(*)) as map(*)"/>
      <xsl:sequence select="map:put($input, $DATA, $update($input?$DATA))"/>
   </xsl:function>   
   
   <xsl:function name="set:build" as="set:atomic-set" visibility="public">
      <xsl:param name="values" as="xs:anyAtomicType*" default="()"/>
      <xsl:record as="set:atomic-set"
         _data=
            "map:build($values, values:=true#0, {'duplicates': 'use-first'})"
         size=
            "%method fn() as xs:integer 
                     { map:size(?$DATA) }"
         empty=
            "%method fn() as xs:boolean 
                     { map:empty(?$DATA) }"
         contains=
            "%method fn($value as xs:anyAtomicType) as xs:boolean 
                     { map:contains(?$DATA, $value) }"
         contains-all=
            "%method fn($other as set:atomic-set) as xs:boolean 
                     { every($value, map:contains(?$DATA, ?)) }"
         values=
            "%method fn() as xs:anyAtomicType* 
                     { keys(?$DATA) }"
         add=
            "%method fn($value as xs:anyAtomicType) as xs:anyAtomicType*
                     { set:replaceData(., map:put(?, $value, true())) }"
         remove=
            "%method fn($value as xs:anyAtomicType) as xs:anyAtomicType* 
                     { set:replaceData(., map:remove(?, $value)) }"
         union=
            "%method fn($other as set:atomic-set) as set:atomic-set 
                     { set:replaceData(., fn($this) {map:merge(($this, $other?$DATA),
                                                    {'duplicates': 'use-first'})})
                     }"
         intersect=
            "%method fn($other as set:atomic-set) as set:atomic-set 
                     { set:replaceData(., map:filter(?, $other?contains)) }"
         except=
            "%method fn($other as set:atomic-set) as set:atomic-set 
                     { set:replaceData(., map:remove(?, $other?values())) }"/>
      
   </xsl:function>
   
   
</xsl:package>