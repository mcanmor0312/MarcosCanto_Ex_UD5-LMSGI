<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ciclos Formativos</title>
            </head>
            <body>
                <h1>Ciclos Formativos</h1>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <xsl:for-each select="ies/ciclos/ciclo/nombre">
                    <p>"<xsl:value-of select="."/>"</p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>