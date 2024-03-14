<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Lista de Libros</h2>
        <h3>Nombre y apellidos: Marcos Canto Moreno</h3>
        <ul>
          <xsl:for-each select="bib/book">
            <li>
              <xsl:value-of select="title"/>
              <xsl:text> - "</xsl:text>
              <xsl:value-of select="publisher"/>
              <xsl:text>" (</xsl:text>
              <xsl:value-of select="year"/>
              <xsl:text>)</xsl:text>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


