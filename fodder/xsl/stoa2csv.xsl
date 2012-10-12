<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:c="http://chs.harvard.edu/xmlns/cts3/ti"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text" encoding="UTF-8" indent="no"/>
    
    <xsl:template match="/">
        <xsl:text>"stoa_work_id","latin_title","stoa_group_id","group_name"</xsl:text><xsl:text>
</xsl:text>
        <xsl:apply-templates select="//c:textgroup"/>
    </xsl:template>
    
    <xsl:template match="c:textgroup">
        <xsl:for-each select="c:work">
            <xsl:text>"</xsl:text><xsl:value-of select="../@projid"/>/<xsl:value-of select="./@projid"/><xsl:text>",</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="normalize-space(c:title)"/><xsl:text>",</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="../@projid"/><xsl:text>",</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="normalize-space(../c:groupname)"/><xsl:text>"
</xsl:text>
        </xsl:for-each>

    </xsl:template>
    
</xsl:stylesheet>