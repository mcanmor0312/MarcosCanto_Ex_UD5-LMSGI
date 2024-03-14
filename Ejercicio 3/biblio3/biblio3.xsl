<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Libros</title>
                <style>
                    .high-price {
                        background-color: red;
                    }
                </style>
            </head>
            <body>
                <h1>Tabla de Libros</h1>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <table border="1">
                    <tr>
                        <th>Precio del libro</th>
                        <th>Título del libro</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="precio" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:if test="precio > 100">
                                    <xsl:attribute name="class">high-price</xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <i><xsl:value-of select="@año"/></i>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
