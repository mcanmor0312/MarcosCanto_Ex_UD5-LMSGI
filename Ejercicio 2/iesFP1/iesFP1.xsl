<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Ciclos</title>
            </head>
            <body>
                <h2>Lista de Ciclos</h2>
                <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
                <ul>
                    <xsl:for-each select="//ciclo/nombre">
                        <li>
                            <xsl:value-of select="concat('&quot;', ., '&quot;')"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>