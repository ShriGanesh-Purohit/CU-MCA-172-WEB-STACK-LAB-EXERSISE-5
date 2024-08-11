<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Define the template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Stock Information</title>
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
                <h1>Stock Information</h1>
                <table>
                    <tr>
                        <th>Company Name</th>
                        <th>Sector</th>
                        <th>Current Price</th>
                        <th>P/E Ratio</th>
                        <th>P/B Ratio</th>
                        <th>ROE (%)</th>
                        <th>Market Capitalisation</th>
                        <th>Date Added</th>
                    </tr>
                    <!-- Apply templates to each stocksymbole element -->
                    <xsl:apply-templates select="stocks/stocksymbole" />
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Define the template for stocksymbole elements -->
    <xsl:template match="stocksymbole">
        <tr>
            <td><xsl:value-of select="companyname" /></td>
            <td><xsl:value-of select="sector" /></td>
            <td><xsl:value-of select="currentprice" /></td>
            <td><xsl:value-of select="peratio" /></td>
            <td><xsl:value-of select="pbratio" /></td>
            <td><xsl:value-of select="roe" /></td>
            <td><xsl:value-of select="marketcapitalisation" /></td>
            <td><xsl:value-of select="dateadded" /></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
