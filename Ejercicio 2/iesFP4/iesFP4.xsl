<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ciclos Formativos Ordenados</title>
            </head>
            <body>
                <h1>Ciclos Formativos Ordenados Descendentemente</h1>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <ol>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:sort select="nombre" order="descending"/>
                        <li>
                            "<xsl:value-of select="nombre"/>"
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="grado"/>
                            <xsl:text>)</xsl:text>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>