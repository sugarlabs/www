<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"
  version="1.0"
  encoding="UTF-8"
  indent="yes"
  omit-xml-declaration="yes"
  doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />

<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>

<!-- Establish character encoding -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<!-- Force reload from server, not local cache -->
<meta http-equiv="pragma" content="no-cache" />

<!-- Allows search engine bots to index this page -->
<meta name="ROBOTS" content="ALL" />

<!-- Disables Microsoft's Smart Tags functionality on this page -->
<meta name="MSSmartTagsPreventParsing" content="true" />

<!-- Provides keywords for search engines -->
<meta name="KEYWORDS"><xsl:attribute name="content"><xsl:value-of select="xml/global/keywords"/></xsl:attribute></meta>

<title><xsl:value-of select="xml/global/title" /></title>

<!-- Default favicon -->
<link rel="shortcut icon" href="assets/favicon_02.png" />

<!-- Default stylesheet -->
<style media="all" type="text/css">@import "css/styles_black.css";</style>

<xsl:comment><![CDATA[[if IE]><link rel="stylesheet" href="css/ie.css" type="text/css" /><![endif] ]]></xsl:comment>
<xsl:comment><![CDATA[[if lte IE 6]><link rel="stylesheet" type="text/css" media="screen" href="css/ie6.css" /><![endif]]]></xsl:comment>

<script type="text/javascript" language="JavaScript">
<xsl:comment><![CDATA[
	logos = new Array();
    logos[0] = 'assets/logo_black_01.png';
    logos[1] = 'assets/logo_black_02.png';
    logos[2] = 'assets/logo_black_03.png';
    logos[3] = 'assets/logo_black_04.png';
    logos[4] = 'assets/logo_black_05.png';
    logos[5] = 'assets/logo_black_06.png';
    logos[6] = 'assets/logo_black_07.png';
    logos[7] = 'assets/logo_black_08.png';
    logos[8] = 'assets/logo_black_09.png';
    logos[9] = 'assets/logo_black_10.png';
    logos[10] = 'assets/logo_black_11.png';
    logos[11] = 'assets/logo_black_12.png';

	var loadCSS = function(file) { 
		var link = document.createElement('link'); 
		link.href = file; 
		link.rel = 'stylesheet'; 
		link.type = 'text/css'; 
		document.getElementsByTagName('head')[0].appendChild(link); 
	};
	
	var loadFavicon = function(file) { 
		var link = document.createElement('link'); 
		link.href = file; 
		link.rel = 'shortcut icon'; 
		document.getElementsByTagName('head')[0].appendChild(link); 
	};

    function loadStyles()
    {
    	r = Math.round(Math.random()*11);
        document.getElementById("logo").setAttribute("src", logos[r])
        
        // get corresponding stylesheet
        if (r == 0) { loadCSS('css/styles_black_01.css'); loadFavicon('assets/favicon_01.png'); }
        if (r == 1) { loadCSS('css/styles_black_02.css'); loadFavicon('assets/favicon_02.png'); }
        if (r == 2) { loadCSS('css/styles_black_03.css'); loadFavicon('assets/favicon_03.png'); }
        if (r == 3) { loadCSS('css/styles_black_04.css'); loadFavicon('assets/favicon_04.png'); }
        if (r == 4) { loadCSS('css/styles_black_05.css'); loadFavicon('assets/favicon_05.png'); }
        if (r == 5) { loadCSS('css/styles_black_06.css'); loadFavicon('assets/favicon_06.png'); }
        if (r == 6) { loadCSS('css/styles_black_07.css'); loadFavicon('assets/favicon_07.png'); }
        if (r == 7) { loadCSS('css/styles_black_08.css'); loadFavicon('assets/favicon_08.png'); }
        if (r == 8) { loadCSS('css/styles_black_09.css'); loadFavicon('assets/favicon_09.png'); }
        if (r == 9) { loadCSS('css/styles_black_10.css'); loadFavicon('assets/favicon_10.png'); }
        if (r == 10) { loadCSS('css/styles_black_11.css'); loadFavicon('assets/favicon_11.png'); }
        if (r == 11) { loadCSS('css/styles_black_12.css'); loadFavicon('assets/favicon_12.png'); }
        
    }
]]></xsl:comment>
</script>

<script src="scripts/menu.js" type="text/javascript"></script>

</head>

<body>

<!-- logo -->
<div class="logo">
	<h1>
		<a href="index.php">
			<img src="assets/logo_black_02.png" width="223" height="49" border="0" id="logo">
				<xsl:attribute name="alt">
					<xsl:value-of select="xml/global/title" />
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="xml/global/title" />
				</xsl:attribute>
			</img>
		</a>
	</h1>
</div>

<!-- menu -->

<!-- set variable to get section -->
<ul id="menu">
	<li>
		<a href="#" name="hint" class="current">menu</a>
		<ul id="expanded_menu">
			<li><a href="index.php" name="index" class="selected">home</a></li>
			
			<xsl:for-each select="//xml/sections/section">
			
				<li>
					<a>
						<xsl:attribute name="href">
							<xsl:variable name="idsection1">
								<xsl:value-of select="./@id" />
							</xsl:variable>
							<xsl:choose>
								<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>
								<xsl:when test="//page[@id = $idsection1]/@black = 'true'">
									<xsl:text>index.php?template=gallery&amp;page=</xsl:text>
									<xsl:value-of select="./@id"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>index.php?template=page&amp;page=</xsl:text>
									<xsl:value-of select="./@id"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
						<xsl:value-of select="./@title"/>
					</a>
					
					<xsl:if test="section">
					<ul>				
						<xsl:for-each select="section">
							<li>
								<a>
									<xsl:attribute name="href">
										<xsl:variable name="idsection2">
											<xsl:value-of select="./@id" />
										</xsl:variable>
										<xsl:choose>
											<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>
											<xsl:when test="//page[@id = $idsection2]/@black = 'true'">
												<xsl:text>index.php?template=gallery&amp;page=</xsl:text>
												<xsl:value-of select="./@id"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text>index.php?template=page&amp;page=</xsl:text>
												<xsl:value-of select="./@id"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
									<xsl:value-of select="./@title"/>
								</a>
								
								<xsl:if test="section">
								<ul>				
									<xsl:for-each select="section">
										<li>
											<a>
												<xsl:attribute name="href">
													<xsl:variable name="idsection3">
														<xsl:value-of select="./@id" />
													</xsl:variable>
													<xsl:choose>
														<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>
														<xsl:when test="//page[@id = $idsection3]/@black = 'true'">
															<xsl:text>index.php?template=gallery&amp;page=</xsl:text>
															<xsl:value-of select="./@id"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:text>index.php?template=page&amp;page=</xsl:text>
															<xsl:value-of select="./@id"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:attribute>
												<xsl:value-of select="./@title"/>
											</a>
											
											<xsl:if test="section">
											<ul>				
												<xsl:for-each select="section">
													<li>
														<a>
															<xsl:attribute name="href">
																<xsl:variable name="idsection4">
																	<xsl:value-of select="./@id" />
																</xsl:variable>
																<xsl:choose>
																	<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>
																	<xsl:when test="//page[@id = $idsection4]/@black = 'true'">
																		<xsl:text>index.php?template=gallery&amp;page=</xsl:text>
																		<xsl:value-of select="./@id"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:text>index.php?template=page&amp;page=</xsl:text>
																		<xsl:value-of select="./@id"/>
																	</xsl:otherwise>
																</xsl:choose>
															</xsl:attribute>
															<xsl:value-of select="./@title"/>
														</a>
													</li>
												</xsl:for-each>
											</ul>
											</xsl:if>
										</li>
									</xsl:for-each>
								</ul>
								</xsl:if>
							</li>
						</xsl:for-each>
					</ul>
					</xsl:if>
				</li>
			</xsl:for-each>
		</ul>
	</li>
</ul>

<!-- global links -->
<div class="links-container">
	<span class="links">
		<xsl:for-each select="xml/links/link">
			<a class="link">
				<xsl:attribute name="href">
					<xsl:value-of select="./@url"/>
				</xsl:attribute>
				<xsl:value-of select="."/>
			</a>
			<xsl:if test="position() &lt; count(//xml/links/link)">
				<xsl:text> / </xsl:text>
			</xsl:if>
		</xsl:for-each>
	</span>
</div>

<!-- main content well -->
<div class="content-container">
	
	<div class="content-index">
		<ul id="keyphrases" class="content">
			<xsl:for-each select="//keyphrase">
	
				<xsl:sort select="." data-type="text" order="ascending"/>
				
				<li class="keyphrase">
					<xsl:attribute name="id">
						<xsl:text>line</xsl:text>
						<xsl:value-of select="position()"/>
					</xsl:attribute>
			
					<xsl:variable name="key"><xsl:value-of select="." /></xsl:variable>
					<span class="headline">
					<a class="link">
						<xsl:attribute name="href">
							<xsl:choose>
								<xsl:when test="ancestor::page/@black = 'true'">
									<xsl:text>index.php?template=gallery&amp;page=</xsl:text>
									<xsl:value-of select="ancestor::page/@id" />
								</xsl:when>
								<xsl:otherwise>					
									<xsl:text>index.php?template=page&amp;page=</xsl:text>
									<xsl:value-of select="ancestor::page/@id" />
								</xsl:otherwise>
							</xsl:choose>
							
							<xsl:text>#phrase</xsl:text>
							<xsl:for-each select="//keyphrase">
							
								<xsl:if test=". = $key">
									<xsl:value-of select="position()" />
								</xsl:if>
								
							</xsl:for-each>
						</xsl:attribute>
						<xsl:text>...</xsl:text>
						<xsl:value-of select="./@title"/>
						<xsl:text>...</xsl:text>
					</a>
					</span>
				</li>
			</xsl:for-each>
		</ul>
	</div>
</div>

<!-- footer -->
<div class="footer"><xsl:apply-templates select="xml/global/footer" /></div>

<script type="text/javascript">
<xsl:comment><![CDATA[

loadStyles();

var res = new Array();
var timeout_val = 100;

var n = 0;
var keyphrases = document.getElementById("keyphrases");
var labels = keyphrases.getElementsByTagName("li"); 

for (n = 1; n <= labels.length; n++) {
	var str = "line" + n;
	document.getElementById(str).style.visibility = "hidden";
	var str2 = "timer_func(" + n + ")";
	res[n] = setTimeout(str2, timeout_val * n);
}

function timer_func(line) 
{ 
	var str = "line" + line;
	document.getElementById(str).style.visibility = "visible"; 
}

window.onbeforeunload = function () {
	document.getElementById('expanded_menu').style.display = 'none';
}

]]></xsl:comment>
</script>

<!-- Google Analytics -->
<script type="text/javascript">
<![CDATA[
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
]]>
</script>
<script type="text/javascript">
<![CDATA[
	try {
	var pageTracker = _gat._getTracker("UA-6267583-2");
	pageTracker._trackPageview();
	} catch(err) {}
]]>
</script>

</body>
</html>
</xsl:template>

<!-- formatting -->

<xsl:template match="link">
	<a xmlns="http://www.w3.org/1999/xhtml" class="link">
		<xsl:attribute name="href">
			<xsl:if test="@url"><xsl:value-of select="@url"/></xsl:if>
			<xsl:if test="@id">
				
				<!-- set id variable -->
				<xsl:variable name="idlink">
					<xsl:value-of select="@id"/>
				</xsl:variable>				

				<xsl:choose>
					<xsl:when test="@id = 'index'">index.php</xsl:when>
					<xsl:when test="@id = 'keyphrases'">index.php?template=keyphrases</xsl:when>
					<xsl:when test="@id = 'sitemap'">index.php?template=sitemap</xsl:when>
					<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>

					<!-- black pages -->
					<xsl:when test="//page[@id = $idlink]/@black = 'true'">index.php?template=gallery&#38;page=<xsl:value-of select="@id"/></xsl:when>
					<xsl:otherwise>index.php?template=page&#38;page=<xsl:value-of select="@id"/></xsl:otherwise>
				</xsl:choose>
				
			</xsl:if>
		</xsl:attribute>
		<xsl:value-of select="."/>
	</a>
</xsl:template>

<xsl:template match="line-break">
	<br xmlns="http://www.w3.org/1999/xhtml" />
</xsl:template>

<xsl:template match="italic">
	<em xmlns="http://www.w3.org/1999/xhtml">
		<xsl:value-of select="."/>
	</em>
</xsl:template>

</xsl:stylesheet>
