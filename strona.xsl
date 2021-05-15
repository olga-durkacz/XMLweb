<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html lang="pl">
           <head>
              <meta charset="utf-8"/>
              <title>Firma</title>
              <link rel="stylesheet" type="text/css" href="strona.css"/>           
        </head>
          <body>
             <img src="{concat('./', firma/logo)}"/>
            <header>
           <h1><xsl:value-of select="firma/nazwa-firmy"/></h1>  
            </header>

           <section>
            <h2>Informacje o firmie</h2>

             <div class="hist">
                <h3>Historia</h3>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


             <h3>Założycie: <xsl:value-of select="firma/wlascicel-firmy/imie"/>
                <xsl:value-of select="firma/wlascicel-firmy/nawisko"/></h3>
                

                </div>
            <div id="col1">
            <div class="uslg">
                <h3>Usługi: </h3>
                 <ul>
                    <xsl:for-each select="firma/lista-uslug/usluga">
                        <li> <xsl:value-of select="."/> </li>
                    </xsl:for-each>
                </ul>

            </div>
            <div class="kont">
             <h3>Kontakt:</h3>
                <p>Numer telefonu: <xsl:value-of select="firma/tel"/></p>
                <p>Aders email <a href="{concat('mailto:', firma/adres-e-mail)}"> <xsl:value-of select="firma/adres-e-mail"/></a></p>
                <p>ul.<xsl:value-of select="firma/adres/ulica"/> 
                <xsl:value-of select="firma/adres/nr-domu"/></p>
                <p><xsl:value-of select="firma/adres/miasto"/></p>
                <p><xsl:value-of select="firma/adres/kod-pczt"/></p>
            </div>
            </div>
        </section>
        <footer>
            <p>Losowa treść stupki</p>
        </footer>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>