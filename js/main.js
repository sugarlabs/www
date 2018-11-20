$(document).ready(function(){
    // Colour changing affect of logo
    var COLORS = [['006E00', '78E600'], ['68008C', '78E600'],
                  ['006E00', '00BEFF'], ['033CD2', '00BEFF'],
                  ['6E008C', '00BEFF'], ['A00000', 'FF7800'],
                  ['033CD2', 'FF64D2'], ['6E008C', 'FF64D2'],
                  ['6E008C', 'FF7800'], ['033CD2', 'FF7800'],
                  ['006E00', 'FFD732'], ['6E008C', 'FFD732']];
    var color = Math.floor((Math.random() * 12));
    var logoID = color + 1;
    if (color < 10) {
        logoID = "0" + logoID;
    }
    document.querySelector('#defaultIcon1').href = 'https://www.sugarlabs.org/assets/favicon_' + logoID + '.png';
    var h = document.querySelector('.logo1').innerHTML;
    h = h.replace(/033cd2/g, COLORS[color][0]);
    h = h.replace(/78e600/g, COLORS[color][1]);
    document.querySelector('.logo1').innerHTML = h;
    if(document.getElementById("secondHeader").style.display!="none"){
        var h = document.querySelector('.logo2').innerHTML;
        h = h.replace(/033cd2/g, COLORS[color][0]);
        h = h.replace(/78e600/g, COLORS[color][1]);
        document.querySelector('.logo2').innerHTML = h;}
    // Footer links collapse code
    $( ".widget h4" ).click(
        function() {
            $(this).parent().toggleClass('active');
    });
    // Disabling code
    // Opera 8.0+
    var isOpera = (!!window.opr && !!opr.addons) || !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0;
    // Firefox 1.0+
    var isFirefox = typeof InstallTrigger !== 'undefined';
    // Safari 3.0+ "[object HTMLElementConstructor]"
    var isSafari = /constructor/i.test(window.HTMLElement) || (function (p) { return p.toString() === "[object SafariRemoteNotification]"; })(!window['safari'] || (typeof safari !== 'undefined' && safari.pushNotification));
    // Internet Explorer 6-11
    var isIE = /*@cc_on!@*/false || !!document.documentMode;
    // Edge 20+
    var isEdge = !isIE && !!window.StyleMedia;
    // Chrome 1+
    var isChrome = !!window.chrome && !!window.chrome.webstore;
    var isOtherdevice= navigator.userAgent.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i);
    var isSmallWidth=0;
    if(window.innerWidth<768)
    {
        isSmallWidth=1;
    }
    if(isOpera || isFirefox || isSafari || isIE || isEdge || isChrome || isOtherdevice || isSmallWidth){
        $('#loaderDiv').css('display', 'block');
        $('#animationPart1').addClass('start');
        $('#animationPart2').addClass('start');
        $('#animationPart3').addClass('start');
        if(isIE){
            $('#navh2').css('display', 'block');
            $('#navh3').css('display', 'block');
        }
        else{
            $('#navh').css('display', 'block');
            $('#navh1').css('display', 'block');
        }
    }
    if(!isOpera && !isFirefox &&!isSafari && !isIE && !isEdge &&!isChrome &&!isOtherdevice &&!isSmallWidth){
        $('#ftctn').css('display', 'none');
        $('#myBtn2').css('display', 'none');
        $('#navh2').css('display', 'block');
        $('#navh').css('display', 'none');
        $('#navh3').css('display', 'block');
        $('#navh1').css('display', 'none');
    }
    // Slideshows code

    $("#glimpse-slider").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider1").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider2").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider3").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider4").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider5").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider6").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#testimonial-slider7").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });
    $("#social-media-logos").owlCarousel({
    	autoPlay: 3000,
    	items : 5,
    	itemsDesktop : [1199,5],
    	itemsDesktopSmall : [979,5],
    });
    var fullHeight = function() {
    	$('.js-fullheight').css('height', $(window).height());
    	$(window).resize(function(){
    		$('.js-fullheight').css('height', $(window).height());
    	});
    };
});
