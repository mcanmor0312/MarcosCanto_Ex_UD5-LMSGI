<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Libros con Precio Menor de 100</title>
            </head>
            <body>
                <h1>Libros con Precio Menor de 100</h1>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <ol>
                    <xsl:for-each select="bib/libro[precio &lt; 100]">
                        <li>
                            <xsl:value-of select="titulo"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>