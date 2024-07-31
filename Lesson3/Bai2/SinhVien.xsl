<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <td>STT</td>
                    <td>MaSV</td>
                    <td>TenSV</td>
                    <td>GioiTinh</td>
                    <td>NgaySinh</td>
                    <td>MaLop</td>
                </tr>
                <xsl:for-each select="SinhVienList/SinhVien">
                    <xsl:sort select="TenSV" order="ascending"/>
                    <tr>
                        <td><xsl:value-of select="STT"/></td>
                        <td><xsl:value-of select="MaSV"/></td>
                        <td><xsl:value-of select="TenSV"/></td>
                        <td><xsl:value-of select="GioiTinh"/></td>
                        <td><xsl:value-of select="NgaySinh"/></td>
                        <td><xsl:value-of select="MaLop"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>