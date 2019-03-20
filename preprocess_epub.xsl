<?xml version="1.0"?> 
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"> 

  <xsl:import href="preprocess_html.xsl" /> 

  <xsl:template match="imagedata/@fileref">
    <xsl:attribute name="fileref">
      <xsl:value-of select="concat(substring(.,1, string-length()-3),'png')" />
    </xsl:attribute>  
  </xsl:template>

  <xsl:template match="imagedata/@format">
    <xsl:attribute name="format">
      <xsl:value-of select="'png'" />
    </xsl:attribute>  
  </xsl:template>

  <xsl:template match="simplelist|member">
    <xsl:apply-templates select="*"/>
  </xsl:template>


</xsl:stylesheet>  
