<?xml version="1.0"?>

<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>
	<xsl:template match="/">
		<xsl:apply-templates select="article/header/topics/topic"/>
	</xsl:template>

        <xsl:template match="/article/header/topics/topic">
                <xsl:value-of select="."/>
		<xsl:text>,</xsl:text>
        </xsl:template>
</xsl:transform>
