<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <td>MaMh</td>
                    <td>TenMh</td>
                    <td>SoGio</td>
                </tr>
                <xsl:for-each select="ListMonHoc/MonHoc">
                    <xsl:if test="SoGio > 40">
                        <tr>
                            <td><xsl:value-of select="MaMh"/></td>
                            <td><xsl:value-of select="TenMh"/></td>
                            <td><xsl:value-of select="SoGio"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>
