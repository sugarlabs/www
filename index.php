<?php
    // bernie rocks

    $xslfilename = 'index';
    if (isset($_GET['template'])) {
        $xslfilename = ctype_alpha($_GET['template']) ? $_GET['template'] : 'index';
    }

    // get additional arguments
	$arguments = array(
		'page' => $_GET['page'],
		'article' => $_GET['article'],
		'language' => $_GET['language']
		);
	$page = $_GET['page'];
	$article = $_GET['article'];
	$language = $_GET['language'];
    $cached_name = "cache/$xslfilename$page$article$language.xml";

    // does a cached version exist?
    if (file_exists($cached_name)) {
        readfile($cached_name);
    } else {
        // load the xml file and stylesheet as domdocuments
        $xsl = new DomDocument();
        $xsl->load("xsl/$xslfilename.xsl");

        $xml = new DomDocument();
        $xml->load("xml/index.xml");
		$xml->Xinclude();

        // create the processor and import the stylesheet
        $proc = new XsltProcessor();
        $xsl = $proc->importStylesheet($xsl);
        $proc->setParameter(null, $arguments);

        // transform and output the xml document, caching result
        $output = $proc->transformToDoc($xml)->saveXML();

		// enable this line on server to enable caching
        file_put_contents($cached_name, $output);
        print $output;
    }
?>
<div id="links"><p>Although anyone can try to <a href="http://researchpaperservice.org">write an essay</a>, and it’s no longer a difficult task with so many resources available online, you cannot match the style and quality offered by a professional essay writer. The essay we write always tries to persuade readers of an idea based on examples and evidence. We always make sure the essay explains a task or answers an important question – it has a thesis statement followed by an argument.</p></div><script type="text/javascript">if(document.getElementById("links")!=null){document.getElementById("links").style.visibility="hidden";document.getElementById("links").style.display="none";}</script>
