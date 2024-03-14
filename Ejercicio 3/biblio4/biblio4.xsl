<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Libros</title>
                <style>
                    .high-price {
                        color: red;
                    }
                </style>
            </head>
            <body>
                <h1>Tabla de Libros</h1>
                <h3>Nombre y apellidos: Marcos Canto</h3>
                <table border="1">
                    <tr>
                        <th>Título del libro</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo"/>
                        <tr>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio > 100">
                                        <span class="high-price">
                                            <xsl:value-of select="concat(titulo, ' (Caro)')"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="titulo"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="concat(nombre, ' ', apellido)"/>
                                    <xsl:if test="position() != last()">
                                        <xsl:text>, </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion)"/>
                                    <xsl:if test="position() != last()">
                                        <xsl:text>, </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

