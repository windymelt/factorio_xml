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
                    <h1>Factorio data in XML</h1>
                    <p>This data can be parsed as XML.</p>
                    <p>
                        This XML has a XML schema definition. see
                        <a href="factorio.xsd">factorio.xsd</a>
                    </p>
                </header>
                <main>
                    <xsl:apply-templates />
                </main>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="factorio">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="section">
        <section>
            <h2>
                <xsl:value-of select="@name" />
            </h2>
            <xsl:apply-templates />
        </section>
    </xsl:template>

    <xsl:template match="item">
        <xsl:element name="h3">
            <!-- Permalink --><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="@name"></xsl:value-of></xsl:attribute>#</xsl:element>
            <xsl:attribute name="id">
                <xsl:value-of select="@name"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="@name"></xsl:value-of>
        </xsl:element>

        <p>
            <xsl:apply-templates />
        </p>
    </xsl:template>

    <!-- default rule: copy any node beneath <item> -->
    <xsl:template match="item//*">
        <xsl:copy>
            <xsl:copy-of select="@*" />
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>

    <!-- override rule: <speed> nodes get special treatment -->
    <xsl:template match="item//speed">
        <code>
            <xsl:value-of select="."></xsl:value-of>
        </code>
    </xsl:template>

    <xsl:template match="item//recipeItem">
        <xsl:element name="a">
            <xsl:attribute name="href">
                #<xsl:value-of select="@name"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="."></xsl:value-of>
        </xsl:element>
    </xsl:template>

    <!-- default rule: ignore any unspecific text node -->
    <xsl:template match="text()" />

    <!-- override rule: copy any text node beneath item -->
    <xsl:template match="item//text()">
        <xsl:copy-of select="." />
    </xsl:template>

</xsl:stylesheet>