<?xml version="1.0"?>

<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>

        <xsl:template match="/">
                <xsl:value-of select="/article/header/slugline"/>
        </xsl:template>
</xsl:transform>
