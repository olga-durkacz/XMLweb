<?xml version="1.0" encoding="UTF-8"?>
      <xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
    <html lang="pl">
    	<head>
    		<meta charset="utf-8"/>
    		<title>Wizytowka</title>
            <link rel="stylesheet" type="text/css" href="wizytowka.css"/>
    	</head>
    	<body>
         <div>
    	  <img src="{concat('./', firma/logo)}"/>
          <h1><xsl:value-of select="firma/nazwa-firmy"/></h1>  
           <p>Numer telefonu: <xsl:value-of select="firma/tel"/></p>
           <p>Aders email <xsl:value-of select="firma/adres-e-mail"/></p>
            </div>
    	</body>
	</html>

    </xsl:template>
</xsl:stylesheet>