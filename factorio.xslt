<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/">
        <html>
        <head>
            <link rel="stylesheet" type="text/css" href="./css/marx.min.css" />
        </head>
            <body>
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
            <xsl:apply-templates/>
        </section>
    </xsl:template>

    <xsl:template match="item">
      <h3><xsl:value-of select="@name"></xsl:value-of></h3>
      <p><xsl:value-of select="."></xsl:value-of></p>
    </xsl:template>
</xsl:stylesheet>