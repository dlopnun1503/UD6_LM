<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Mi Biblioteca</h2>
        <table>
          <tr>
            <th>Título</th>
            <th>Editorial</th>
            <th>Edición</th>
            <th>ISBN</th>
            <th>Número de Páginas</th>
            <th>Autor</th>
            <th>Fecha de Nacimiento del Autor</th>
            <th>Nacionalidad del Autor</th>
          </tr>
          <xsl:for-each select="Libros/libro">
            <tr>
              <td><xsl:value-of select="Titulo"/></td>
              <td><xsl:value-of select="Editorial"/></td>
              <td><xsl:value-of select="Edicion"/></td>
              <td><xsl:value-of select="ISBN"/></td>
              <td><xsl:value-of select="NumPaginas"/></td>
              <td><xsl:value-of select="Autores/autor/Nombre"/> <xsl:value-of select="Autores/autor/Apellidos"/></td>
              <td><xsl:value-of select="Autores/autor/FechaNacimiento"/></td>
              <td><xsl:value-of select="Autores/autor/Nacionalidad"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>