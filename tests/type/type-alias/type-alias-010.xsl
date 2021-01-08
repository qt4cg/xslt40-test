<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   exclude-result-prefixes="#all"
   expand-text="yes"
>
  <!-- Match record type with type alias -->

  <xsl:item-type name="faculty" as="record(faculty, courses)"/>
  <xsl:item-type name="course" as="record(course, students)"/>
  <xsl:item-type name="student" as="record(first, last, email)"/>
  
  <xsl:template match="type(faculty)">
    <h1>{?faculty} Faculty</h1>
    <xsl:apply-templates select="?courses?*"/>
  </xsl:template>
  
  <xsl:template match="type(course)">
    <h2>{?course} Course</h2>
    <p>List of students:</p>
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
        </tr>
      </thead>
      <tbody>
        <xsl:apply-templates select="?students?*">
          <xsl:sort select="?last"/>
          <xsl:sort select="?first"/>
        </xsl:apply-templates>
      </tbody>
    </table>
  </xsl:template>
  
  <xsl:template match="type(student)">
    <tr>
      <td>{?first} {?last}</td>
      <td>{?email}</td>
    </tr>
  </xsl:template>
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="json-doc('courses.json')"/>
    </out>
  </xsl:template>
  
 
</xsl:stylesheet>
