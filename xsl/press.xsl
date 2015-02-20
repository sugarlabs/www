<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"
  version="1.0"
  encoding="UTF-8"
  indent="yes"
  omit-xml-declaration="yes"
  doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />

<xsl:param name="page" />
<xsl:param name="article" />
<xsl:param name="language" />

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
<style media="all" type="text/css">@import "css/styles_white.css";</style>

<xsl:comment><![CDATA[[if IE]><link rel="stylesheet" href="css/ie.css" type="text/css" /><![endif] ]]></xsl:comment>
<xsl:comment><![CDATA[[if lte IE 6]><link rel="stylesheet" type="text/css" media="screen" href="css/ie6.css" /><![endif]]]></xsl:comment>


<script type="text/javascript" language="JavaScript">
<xsl:comment><![CDATA[
    logos = new Array();
    logos[0] = 'assets/logo_white_01.png';
    logos[1] = 'assets/logo_white_02.png';
    logos[2] = 'assets/logo_white_03.png';
    logos[3] = 'assets/logo_white_04.png';
    logos[4] = 'assets/logo_white_05.png';
    logos[5] = 'assets/logo_white_06.png';
    logos[6] = 'assets/logo_white_07.png';
    logos[7] = 'assets/logo_white_08.png';
    logos[8] = 'assets/logo_white_09.png';
    logos[9] = 'assets/logo_white_10.png';
    logos[10] = 'assets/logo_white_11.png';
    logos[11] = 'assets/logo_white_12.png';

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
        document.getElementById("logo").setAttribute("src", logos[r]);
        
        // get corresponding stylesheet
        if (r == 0) { loadCSS('css/styles_white_01.css'); loadFavicon('assets/favicon_01.png'); }
        if (r == 1) { loadCSS('css/styles_white_02.css'); loadFavicon('assets/favicon_02.png'); }
        if (r == 2) { loadCSS('css/styles_white_03.css'); loadFavicon('assets/favicon_03.png'); }
        if (r == 3) { loadCSS('css/styles_white_04.css'); loadFavicon('assets/favicon_04.png'); }
        if (r == 4) { loadCSS('css/styles_white_05.css'); loadFavicon('assets/favicon_05.png'); }
        if (r == 5) { loadCSS('css/styles_white_06.css'); loadFavicon('assets/favicon_06.png'); }
        if (r == 6) { loadCSS('css/styles_white_07.css'); loadFavicon('assets/favicon_07.png'); }
        if (r == 7) { loadCSS('css/styles_white_08.css'); loadFavicon('assets/favicon_08.png'); }
        if (r == 8) { loadCSS('css/styles_white_09.css'); loadFavicon('assets/favicon_09.png'); }
        if (r == 9) { loadCSS('css/styles_white_10.css'); loadFavicon('assets/favicon_10.png'); }
        if (r == 10) { loadCSS('css/styles_white_11.css'); loadFavicon('assets/favicon_11.png'); }
        if (r == 11) { loadCSS('css/styles_white_12.css'); loadFavicon('assets/favicon_12.png'); }
        
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
			<img src="assets/logo_white_02.png" width="223" height="49" border="0" id="logo">
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

<!-- set variable to press -->
<xsl:variable name="page">press</xsl:variable>

<!-- set variable to get section -->
<xsl:variable name="section">
	<xsl:choose>
		<xsl:when test="//page[@id = $page]/@section">
			<xsl:value-of select="//page[@id = $page]/@id" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$page" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>

<ul id="menu">
	<li>
		<a href="#" name="hint" class="current">press</a>
		<ul id="expanded_menu">
			<li><a href="index.php" name="index">home</a></li>
			
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
						
						<xsl:choose>
							<xsl:when test="./@id = $section">
								<xsl:attribute name="class">selected</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:for-each select="section">
									<xsl:if test="./@id = $section">
										<xsl:attribute name="class">selected</xsl:attribute>
									</xsl:if>
								</xsl:for-each>
								<xsl:for-each select="section/section">
									<xsl:if test="./@id = $section">
										<xsl:attribute name="class">selected</xsl:attribute>
									</xsl:if>
								</xsl:for-each>
								<xsl:for-each select="section/section/section">
									<xsl:if test="./@id = $section">
										<xsl:attribute name="class">selected</xsl:attribute>
									</xsl:if>
								</xsl:for-each>
							</xsl:otherwise>
						</xsl:choose>
								
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
									<xsl:choose>
										<xsl:when test="./@id = $section">
											<xsl:attribute name="class">selected</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:for-each select="section">
												<xsl:if test="./@id = $section">
													<xsl:attribute name="class">selected</xsl:attribute>
												</xsl:if>
											</xsl:for-each>
											<xsl:for-each select="section/section">
												<xsl:if test="./@id = $section">
													<xsl:attribute name="class">selected</xsl:attribute>
												</xsl:if>
											</xsl:for-each>
										</xsl:otherwise>
									</xsl:choose>
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
												<xsl:choose>
													<xsl:when test="./@id = $section">
														<xsl:attribute name="class">selected</xsl:attribute>
													</xsl:when>
													<xsl:otherwise>
														<xsl:for-each select="section">
															<xsl:if test="./@id = $section">
																<xsl:attribute name="class">selected</xsl:attribute>
															</xsl:if>
														</xsl:for-each>
													</xsl:otherwise>
												</xsl:choose>
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
															<xsl:if test="./@id = $section">
																<xsl:attribute name="class">selected</xsl:attribute>
															</xsl:if>
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

	<div class="content">
		<xsl:for-each select="//pressrelease">
			<xsl:sort select="@sortdate" data-type="number" order="descending"/>
						
			<xsl:variable name="pressarticle" select="@sortdate" />
			<a>
				<xsl:attribute name="name">
					<xsl:value-of select="$pressarticle" />
				</xsl:attribute>
			</a>
		
			<div class="text">
				
				<xsl:choose>
					<xsl:when test="$article = $pressarticle and $language != ''">
					
						<!-- headlines -->
						<div class="headline">
							<xsl:value-of select="language[@id = $language]/title"/>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="headline">
							<xsl:value-of select="language[1]/title"/>
						</div>
					</xsl:otherwise>
				</xsl:choose>

				<!-- language links -->
				<div class="attachment">
					<xsl:value-of select="date"/>
					<xsl:text> - </xsl:text>
					<xsl:for-each select="language">
						<xsl:choose>
							<xsl:when test="$article = $pressarticle and $language = @id">
								<span class="tab-header"><xsl:value-of select="@id"/></span>
							</xsl:when>
							<xsl:otherwise>
								<a class="link">
									<xsl:attribute name="href">
										<xsl:text>index.php?template=press</xsl:text>
										<xsl:text>&#38;article=</xsl:text>
										<xsl:value-of select="$pressarticle"/>
										<xsl:text>&#38;language=</xsl:text>
										<xsl:value-of select="@id"/>
										<xsl:text>#</xsl:text>
										<xsl:value-of select="$pressarticle"/>
									</xsl:attribute>
									<xsl:value-of select="@id"/>
								</a>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:if test="position() &lt; count(../language)">
							<xsl:text> / </xsl:text>
						</xsl:if>
					</xsl:for-each>
				</div>

				<!-- language HTML -->
				<xsl:if test="$article = $pressarticle and $language != ''">
				
					<div class="normal clrtop">
						<!-- attachments -->
						<xsl:if test="language[@id = $language]/attachment">
							<a class="attachment link">
								<xsl:attribute name="href">
									<xsl:value-of select="language[@id = $language]/attachment/@url"/>
								</xsl:attribute>
								<xsl:value-of select="language[@id = $language]/attachment"/>
							</a>
						</xsl:if>
						
						<xsl:for-each select="language[@id = $language]/paragraph">
							<xsl:choose>
							<xsl:when test="position() &lt; count(../paragraph)">
								<div class="text">
									<span class="press">
									<xsl:apply-templates select="."/>
									</span>
								</div>
							</xsl:when>
							<xsl:otherwise>
								<span class="press">
									<xsl:apply-templates select="."/>
								</span>
							</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</div>
					
				</xsl:if>
			</div>
		</xsl:for-each>
	</div>
		
	<!-- sidebar -->
	<xsl:if test="//page[@id = $page]//sidebar">
		<div class="sidebar">
			<xsl:for-each select="//page[@id = $page]//sidebar/*">
				<xsl:if test="local-name()='thumbnail'">
					<div class="thumb-wrapper spc last">
						<div class="spc">
							<xsl:choose>
								<xsl:when test="@id or @url">
									<a>
										<xsl:attribute name="href">
											<xsl:if test="@id">
												
												<!-- set id variable -->
												<xsl:variable name="idimage">
													<xsl:value-of select="@id"/>
												</xsl:variable>				

												<xsl:choose>
													<!-- black pages -->
													<xsl:when test="//page[@id = $idimage]/@black = 'true'">index.php?template=gallery&#38;page=<xsl:value-of select="@id"/></xsl:when>
													<xsl:otherwise>index.php?template=page&#38;page=<xsl:value-of select="@id"/></xsl:otherwise>
												</xsl:choose>

											</xsl:if>
											<xsl:if test="@url">
												<xsl:value-of select="@url"/>
											</xsl:if>
										</xsl:attribute>
										<xsl:apply-templates select="image" />
									</a>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates select="image" />
								</xsl:otherwise>
							</xsl:choose>
						</div>
						<xsl:if test="title">
							<div>
								<xsl:choose>
									<xsl:when test="@id or @url">
										<a class="link">
											<xsl:attribute name="href">
												<xsl:if test="@id">

													<!-- set id variable -->
													<xsl:variable name="idimage">
														<xsl:value-of select="@id"/>
													</xsl:variable>				

													<xsl:choose>
														<xsl:when test="@id = 'index'">index.php</xsl:when>
														<xsl:when test="@id = 'keyphrases'">index.php?template=keyphrases</xsl:when>
														<xsl:when test="@id = 'sitemap'">index.php?template=sitemap</xsl:when>
														<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>

														<!-- black pages -->
														<xsl:when test="//page[@id = $idimage]/@black = 'true'">index.php?template=gallery&#38;page=<xsl:value-of select="@id"/></xsl:when>
														<xsl:otherwise>index.php?template=page&#38;page=<xsl:value-of select="@id"/></xsl:otherwise>
													</xsl:choose>

												</xsl:if>
												<xsl:if test="@url">
													<xsl:value-of select="@url"/>
												</xsl:if>
											</xsl:attribute>

											<xsl:value-of select="title"/>
										</a>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="title"/>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:if>
						<xsl:if test="caption">
							<div><xsl:value-of select="caption"/></div>
						</xsl:if>
					</div>
				</xsl:if>
				<xsl:if test="local-name()='paragraph'">
					<div class="links clr">
						<xsl:if test="./@topmargin">
							<xsl:attribute name="style">
								<xsl:text>margin-top: </xsl:text>
								<xsl:apply-templates select="./@topmargin"/>
								<xsl:text>px</xsl:text>
							</xsl:attribute>
						</xsl:if>
						
						<xsl:apply-templates select="."/>
					</div>
				</xsl:if>
			</xsl:for-each>
		</div>
	</xsl:if>
</div>
	
<!-- global pagination -->

<!-- set variable to node position -->
<xsl:variable name="nodepos">
	<xsl:for-each select="//page[@paginate]">

		<xsl:if test="@id = $page">
			<xsl:value-of select="position()"/>
		</xsl:if>

	</xsl:for-each>
</xsl:variable>

<!-- pagination -->
<xsl:if test="//page[@id = $page]/@paginate">
<div class="pagination">

	<xsl:if test="$nodepos - 1 &gt; 0">
		<a class="link">
			<xsl:attribute name="href">
				<xsl:choose>
					<xsl:when test="//page[@paginate][$nodepos - 1]/@id = 'index'">index.php</xsl:when>
					<xsl:when test="//page[@paginate][$nodepos - 1]/@black = 'true'">
						<xsl:text>index.php?template=gallery&#38;page=</xsl:text>
						<xsl:for-each select="//page[@paginate]">
							<xsl:if test="position() = $nodepos - 1">
								<xsl:value-of select="./@id"/>
							</xsl:if>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>						
						<xsl:text>index.php?template=page&amp;page=</xsl:text>
						<xsl:for-each select="//page[@paginate]">
							<xsl:if test="position() = $nodepos - 1">
								<xsl:value-of select="./@id"/>
							</xsl:if>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
				
			</xsl:attribute>
			<xsl:text>&#60; previous</xsl:text>
		</a>
	</xsl:if>
		
	<xsl:for-each select="//page[@paginate]">
		<xsl:if test="position() = $nodepos">
			<xsl:if test="./@id != ./@section">
				<xsl:text> / </xsl:text>
				
				<a class="link">
					<xsl:attribute name="href">
						
						<xsl:variable name="sectionid">
							<xsl:value-of select="./@section" />
						</xsl:variable>
						
						<xsl:choose>
							<xsl:when test="//page[@paginate][@section = $sectionid]/@black = 'true'">
								<xsl:text>index.php?template=gallery&#38;page=</xsl:text>
								<xsl:value-of select="./@section"/>
							</xsl:when>
							<xsl:otherwise>						
								<xsl:text>index.php?template=page&amp;page=</xsl:text>
								<xsl:value-of select="./@section"/>
							</xsl:otherwise>
						</xsl:choose>						

					</xsl:attribute>
					<xsl:value-of select="./@section"/>
					<xsl:text> main page</xsl:text>
				</a>
				
			</xsl:if>
		</xsl:if>
	</xsl:for-each>
	
	<xsl:if test="$nodepos + 1 &lt;= count(//page[@paginate])">
		<xsl:text> / </xsl:text>

		<a class="link">
			<xsl:attribute name="href">
				
				<xsl:choose>
					<xsl:when test="//page[@paginate][$nodepos + 1]/@id = 'press'">
						<xsl:text>index.php?template=press</xsl:text>
					</xsl:when>
					<xsl:when test="//page[@paginate][$nodepos + 1]/@black = 'true'">
						<xsl:text>index.php?template=gallery&#38;page=</xsl:text>
						<xsl:for-each select="//page[@paginate]">
							<xsl:if test="position() = $nodepos + 1">
								<xsl:value-of select="./@id"/>
							</xsl:if>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>						
						<xsl:text>index.php?template=page&amp;page=</xsl:text>
						<xsl:for-each select="//page[@paginate]">
							<xsl:if test="position() = $nodepos + 1">
								<xsl:value-of select="./@id"/>
							</xsl:if>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
								
			</xsl:attribute>
			<xsl:text>next &#62;</xsl:text>
		</a>
	</xsl:if>
	
</div>
</xsl:if>

<!-- footer -->
<div class="footer"><xsl:apply-templates select="xml/global/footer" /></div>

<script type="text/javascript">
<xsl:comment><![CDATA[

loadStyles();

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

<xsl:template match="thumbnail">
	<li xmlns="http://www.w3.org/1999/xhtml" class="thumb-wrapper">
			<xsl:if test="image">
				<xsl:choose>
					<xsl:when test="@id or @url">
						<div class="spc">
							<a>
								<xsl:attribute name="href">
									<xsl:if test="@id">

										<!-- set id variable -->
										<xsl:variable name="idimage">
											<xsl:value-of select="@id"/>
										</xsl:variable>				

										<xsl:choose>
											<xsl:when test="@id = 'index'">index.php</xsl:when>
											<xsl:when test="@id = 'keyphrases'">index.php?template=keyphrases</xsl:when>
											<xsl:when test="@id = 'sitemap'">index.php?template=sitemap</xsl:when>
											<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>

											<!-- black pages -->
											<xsl:when test="//page[@id = $idimage]/@black = 'true'">index.php?template=gallery&#38;page=<xsl:value-of select="@id"/></xsl:when>
											<xsl:otherwise>index.php?template=page&#38;page=<xsl:value-of select="@id"/></xsl:otherwise>
										</xsl:choose>

									</xsl:if>
									<xsl:if test="@url">
										<xsl:value-of select="@url"/>
									</xsl:if>
								</xsl:attribute>
				
								<xsl:apply-templates select="image" />
							</a>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="image" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:if test="title">
				<xsl:choose>
					<xsl:when test="@id or @url">
						<div>
							<a class="link">
								<xsl:attribute name="href">
									<xsl:if test="@id">

										<!-- set id variable -->
										<xsl:variable name="idtitle">
											<xsl:value-of select="@id"/>
										</xsl:variable>				

										<xsl:choose>
											<xsl:when test="@id = 'index'">index.php</xsl:when>
											<xsl:when test="@id = 'keyphrases'">index.php?template=keyphrases</xsl:when>
											<xsl:when test="@id = 'sitemap'">index.php?template=sitemap</xsl:when>
											<xsl:when test="@id = 'press'">index.php?template=press</xsl:when>

											<!-- black pages -->
											<xsl:when test="//page[@id = $idtitle]/@black = 'true'">index.php?template=gallery&#38;page=<xsl:value-of select="@id"/></xsl:when>
											<xsl:otherwise>index.php?template=page&#38;page=<xsl:value-of select="@id"/></xsl:otherwise>
										
										</xsl:choose>
									</xsl:if>
									<xsl:if test="@url">
										<xsl:value-of select="@url"/>
									</xsl:if>
								</xsl:attribute>
				
								<xsl:value-of select="title"/>
							</a>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div><xsl:value-of select="title"/></div>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		<xsl:for-each select="caption">
			<div><xsl:apply-templates select="."/></div>
		</xsl:for-each>
	</li>
</xsl:template>

<xsl:template match="list">
	<xsl:choose>
		<xsl:when test="@bullet">
			<ul>
				<xsl:for-each select="item">
					<li><xsl:apply-templates select="."/></li>
				</xsl:for-each>
			</ul>
		</xsl:when>
		<xsl:otherwise>
			<ul class="bullet">
				<xsl:for-each select="item">
					<li><xsl:apply-templates select="."/></li>
				</xsl:for-each>
			</ul>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

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

<xsl:template match="title">
	<span class="headline">
		<xsl:value-of select="."/>
	</span>
</xsl:template>

</xsl:stylesheet>
