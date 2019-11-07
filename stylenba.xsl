<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

	<html>
		<body>
			<h1>NBA Team</h1>
			<table border="1">
					<tr bgcolor="#9acd32">
						<th>Name</th>
						<th>Conference</th>
						<th>Founded</th>
						<th>Town</th>
						<th>Champion</th>
					</tr>

				<xsl:for-each select="nbateam/team">
				<xsl:sort select="name" order="ascending"/>
					<tr>
						<td>
							<xsl:value-of select="name"/>
						</td>
						<td>
							<xsl:value-of select="conference"/>
						</td>
						<td>
							<xsl:value-of select="founded"/>
						</td>
						<td>
							<xsl:value-of select="town"/>
						</td>
						<td>
							<xsl:value-of select="champion"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>