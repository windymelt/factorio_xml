<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/">
        <html>
            <body>
                <link type="stylesheet" href="./css/marx.min.css" />
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="factorio">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="section">
        <section>
            <h2><xsl:value-of select="@name"/></h2>
        </section>
    </xsl:template>
</xsl:stylesheet>