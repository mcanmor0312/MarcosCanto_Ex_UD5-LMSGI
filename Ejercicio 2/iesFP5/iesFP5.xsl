<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .year-2009 { color: blue; }
                    .year-before-2009 { color: red; }
                    .year-after-2009 { color: green; }
                </style>
            </head>
            <body>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <h1>IES Nuestra Señora de los Remedios</h1>
                <table border="1">
                    <tr>
                        <th>Nombre del ciclo</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <tr>
                            <td>"<xsl:value-of select="nombre"/>"</td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="decretoTitulo/@año > 2009">year-after-2009</xsl:when>
                                        <xsl:when test="decretoTitulo/@año = 2009">year-2009</xsl:when>
                                        <xsl:otherwise>year-before-2009</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="decretoTitulo/@año"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>