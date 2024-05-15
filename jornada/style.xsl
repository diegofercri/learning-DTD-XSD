<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>Liga Santander</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
            </head>
            
            <body>
                <header>
                    <div class="bg-primary d-flex justify-content-center">
                        <h1 class="text-white py-3"><xsl:value-of select="jornada/denominacion"/> - <xsl:value-of select="jornada/categoria"/></h1>
                    </div>
                </header>
                <main>
                    <div class="container border rounded-3 p-2 my-3">
                        <div class="text-center text-primary">
                            <h2>Jornada nº <xsl:value-of select="jornada/@numero"/></h2>
                        </div>
                    </div>
                    
                    <div class="container p-0 table-responsive">
                        <table class="table table-striped border align-middle">
                            <tbody>
                                <xsl:for-each select="jornada/partido">
                                    <tr class="fw-bold">
                                        <td class="border fw-normal" style="width: 180px;"><xsl:value-of select="@fecha"/> - <xsl:value-of select="@hora"/></td>
                                        <td class="border"  style="width: 150px;">
                                            <img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{local/@escudo}.png" alt="{local}" width="80" />
                                        </td>
                                        <td class="border"><xsl:value-of select="local"/></td>
                                        
                                        <td class="border"><xsl:value-of select="number(goleslocal)" /></td>
                                        <td class="border text-end"><xsl:value-of select="number(golesvisitante)" /></td>
                                        
                                        <td class="border text-end"><xsl:value-of select="visitante"/></td>
                                        <td class="border text-end" style="width: 150px;">
                                            <img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{visitante/@escudo}.png" alt="{visitante}" width="80" />
                                        </td>
                                        <td class="bg-dark border border-white text-light text-center">
                                            <xsl:choose>
                                                <xsl:when test="number(goleslocal) > number(golesvisitante)">1</xsl:when>>
                                            </xsl:choose>
                                        </td>
                                        <td class="bg-dark border border-white text-light text-center">
                                            <xsl:choose>
                                                <xsl:when test="number(goleslocal) = number(golesvisitante)">X</xsl:when>>
                                            </xsl:choose>
                                        </td>
                                        <td class="bg-dark border border-white text-light text-center">
                                            <xsl:choose>
                                                <xsl:when test="number(golesvisitante) > number(goleslocal)">2</xsl:when>>
                                            </xsl:choose>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                </main>
                <footer>
                    <div class="bg-primary d-flex justify-content-center py-3">
                        <h3 class="text-white">Azarquiel - DTD XML XSL - Diego Fdez</h3>
                    </div>
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>