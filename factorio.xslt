<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/">
        <html>
        <head>
            <link rel="stylesheet" type="text/css" href="./css/marx.min.css" />
        </head>
            <body>
                <header>
                    <h1>Factorio data</h1>
                </header>
                <main>
                <xsl:apply-templates/>
                </main>
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
      <xsl:element name="h3">
        <xsl:attribute name="id">
            <xsl:value-of select="@name"></xsl:value-of>
        </xsl:attribute>
        <xsl:text>
            <xsl:value-of select="@name"></xsl:value-of>
        </xsl:text>
      </xsl:element>

      <p><xsl:value-of select="."></xsl:value-of></p>
    </xsl:template>

</xsl:stylesheet>
