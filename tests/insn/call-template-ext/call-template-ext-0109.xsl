<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="4.0"
	xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">
	<!-- Purpose: Use EQName for template name. -->

	<t:template match="/">
		<t:comment>ERROR: this value should NOT appear</t:comment>
	</t:template>

	<t:template name=" Q{}temp ">
			<ext:temp/>	
	</t:template>
	
	<t:template name=" Q{http://extensions.com/}temp ">
		<out>
			<t:text>Do Nothing!</t:text>
		</out>
	</t:template>
</t:transform>
