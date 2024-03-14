<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Autores</title>
            </head>
            <body>
                <h1>Autores Ordenados por Apellido</h1>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <ol>
                    <xsl:for-each select="bib/libro/autor|bib/libro/editor">
                        <xsl:sort select="apellido"/>
                        <li>
                            <xsl:value-of select="apellido"/>
                            <xsl:text>, </xsl:text>
                            <xsl:value-of select="nombre"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>