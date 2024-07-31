<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <td>MaSv</td>
                    <td>MaMh</td>
                    <td>DiemThi</td>
                </tr>
                <xsl:for-each select="ListKetQua/KetQua/MaMh = 'THVP' ">
                    <xsl:if test="DiemThi >= 5">
                        <tr>
                            <td><xsl:value-of select="MaSv"/></td>
                            <td><xsl:value-of select="MaMh"/></td>
                            <td><xsl:value-of select="DiemThi"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>