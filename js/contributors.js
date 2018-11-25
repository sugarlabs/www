var contributors = [];
var phtml = "";
var mhtml = "";
var min1 = 0;
var max1 = 20;
var lastupdated = "";
$.getJSON( "/assets/clists.json", function( data ) {
        contributors = data['opensource'];
        manual = data['members'];
        lastupdated = data['dategen'];
});
$(window).on('pageshow', function() {
        if(screen.width < 920) {
            mpids = 2;
        } else {
            mpids = 4;
        }
        document.getElementById("cno").innerHTML = Object.keys(contributors).length;
        if(min1 === 0) { $("#mback").prop("disabled", true);};
        var profileid = 0;
        $.each(contributors, function(i, item) {
                if (profileid % 6 === 0) {phtml += "</div><div class='row top-buffer'>";}
                if("github" in contributors[i]) {
                        phtml += "<div class='col-sm-2 text-center'>";
                        phtml += "<a target='_blank' href='https://github.com/"+i+"'>";
                        phtml += "<img class='bigpimage' src='https://avatars.githubusercontent.com/"+i+"'>";
                        phtml += '<br><strong class="bpn">@'+i+'</strong>';
                        phtml += '</a></div>'
                }
                if("desc" in contributors[i]) {
                        phtml += "<div class='col-sm-2 text-center'>";
                        phtml += "<a id='"+i+"' class='hasDesc' href='javascript:void(0)'>";
                        phtml += "<img class='bigpimage' src='assets/mancontributor.png'>";
                        phtml += '<br><strong class="bpn">'+i+'</strong>';
                        phtml += '</a></div>'
                }
                profileid++;
        });
        var profileid = 0;
        phtml += "</div><br><br> <p class='lastupdated text-center'>Last updated: "+lastupdated+"</p>"
        document.getElementById("open-source").innerHTML = phtml;
        initdescs();
});
function initdescs() {
        $(".hasDesc").click(function(e) {
            var target = e.currentTarget;
            targetdesc = contributors[target.id]['desc'];
            if(targetdesc.length > 0) {
                converter = new showdown.Converter(),
                htmldesc = converter.makeHtml(targetdesc);
                document.getElementById("mtitle").innerHTML = name;
                document.getElementById("mdesc").innerHTML = htmldesc;
                $("#mmodal").modal("show");
            }
        });
    };
