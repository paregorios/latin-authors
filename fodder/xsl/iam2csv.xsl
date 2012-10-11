<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text"  encoding="UTF-8" indent="no"/>
    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="dataroot">
        <xsl:text>"Author_Abbrev","Title_Abbrev","Authors","Latin_Title","Modern_Title"
</xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="Ancient_x0020_References[not(Greek_Title)]">
        <xsl:apply-templates/>
        <xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="Author_Abbrev | Title_Abbrev | Authors | Latin_Title | Modern_Title ">
        <xsl:text>"</xsl:text><xsl:value-of select="."/><xsl:text>"</xsl:text>
        <xsl:if test="following-sibling::*[not(self::Greek_Title)]">
            <xsl:text>,</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="Ancient_x0020_References[Greek_Title]"/>
    
    <xsl:template match="text()"/>
    
</xsl:stylesheet>