<?xml version="1.0" encoding="UTF-8"?>  <!-- dichiarazione xml-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">  <!-- dichiarazione xslt-->
<!-- ESERCIZIO 12: Costruire un foglio di stile XSLT con alcune regole di
trasformazione e lanciare il comando xsltproc da terminale.
-->

<xsl:output method="html" encoding="UTF-8" indent="yes" />  <!-- istruzione di elaborazione-->
<xsl:template match="/"> <!-- Regole di template-->
        <html>
            <head>
               
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
                </title>
            </head>
            <body>  
                <div style="text-align:center">
                    <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//tei:bibl">
        <h3>
            <xsl:value-of select="tei:title" />
        </h3>
        <p>
            <xsl:value-of select="tei:publisher" /> - 
            <xsl:value-of select="tei:date" />
        </p>
    </xsl:template>
</xsl:stylesheet>

