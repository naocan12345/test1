<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 	xmlns:xsldoc="http://www.bacman.net/XSLdoc"
xmlns:ts="http://www.travelsky.com/trp/2019" xmlns:oj="http://www.openjawtech.com/xdist/2005"	>	
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<h2>
					<xsl:value-of select="/root/ts:table/@name"/>
				</h2>
			</head>
			<body>
				<div>
					<table frame="box">
						<tr>
							<td style="border:1px solid black">
								<xsl:value-of select="/root/ts:table/ts:tr/ts:td[1]"/>
							</td>
							<td style="border:1px solid black">
								<xsl:value-of select="/root/ts:table/ts:tr/ts:td[2]"/>
							</td>
							<td style="border:1px solid black">
								<xsl:value-of select="/root/ts:table/ts:tr/ts:td[3]"/>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<xsl:variable name="xEventGFX" select="/root/oj:table/oj:imgURL"/>
					<img src="{$xEventGFX}"/>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>