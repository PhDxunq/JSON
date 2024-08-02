<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <xsl:for-each select="company/department">
                <h3>
                    <xsl:value-of select="departmentName"/>
                </h3>
                <table border="1">
                    <tr>
                        <th>Employee ID</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Salary (USD)</th>
                        <th>Hire Date</th>
                    </tr>
                    <xsl:for-each select="employees/employee">
                        <tr>
                            <td>
                                <xsl:value-of select="employeeID"/>
                            </td>
                            <td>
                                <xsl:value-of select="employeeName"/>
                            </td>
                            <td>
                                <xsl:value-of select="position"/>
                            </td>
                            <td>
                                <xsl:value-of select="contact/email"/>
                            </td>
                            <td>
                                <xsl:value-of select="contact/phone"/>
                            </td>
                            <td>
                                <xsl:value-of select="salary"/>
                            </td>
                            <td>
                                <xsl:value-of select="hireDate"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </xsl:for-each>

        </html>
    </xsl:template>
</xsl:stylesheet>