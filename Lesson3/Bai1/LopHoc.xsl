<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <th>MaLop</th>
                    <th>TenLop</th>
                </tr>
                <xsl:for-each select="LopHoc/Class">
                    <tr>
                        <td>
                            <xsl:value-of select="MaLop"/>
                        </td>
                        <td>
                            <xsl:value-of select="TenLop"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>