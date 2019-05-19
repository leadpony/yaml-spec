<?xml version="1.0"?>

<!--
 - Customize the generation of EPUB from the DocBook sources for the YAML spec.
-->

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

  <!-- Invoke the DocBook -> EPUB conversion stylesheet -->
  <xsl:import href="docbook_xslt/epub3/chunk.xsl" />

  <!-- Use a CSS stylesheet to customize the HTML file. -->
  <xsl:param name="html.stylesheet" select="'single_html.css epub.css'"></xsl:param>

  <!-- Ignore fo only -->
  <xsl:template match="fo" />

  <!-- Ignore a <pagebreak/> command -->
  <xsl:template match="pagebreak" />

</xsl:stylesheet>
