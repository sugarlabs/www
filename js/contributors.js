var contributors = [];
var phtml = "";
var mhtml = "";
var min1 = 0;
var max1 = 20;
var lastupdated = "";
$.getJSON( "/assets/clists.json", function( data ) {
        contributors = data['opensource'];
        members = data['members']
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
                phtml += "<div class='col-sm-2 text-center'>";
                phtml += "<a target='_blank' href='https://github.com/"+i+"'>";
                phtml += "<img class='bigpimage' src='https://avatars.githubusercontent.com/"+i+"'>";
                phtml += '<br><strong class="bpn">@'+i+'</strong>';
                phtml += '</a></div>'
                profileid++;
        });
        var profileid = 0;
        loadmemberlist();
        phtml += "</div><br><br> <p class='lastupdated text-center'>Last updated: "+lastupdated+"</p>"
        document.getElementById("open-source").innerHTML = phtml;
        $("#mback").click(function() {
                pmin1 = min1-20;
                if(pmin1 >= 0) {
                min1 -= 20;
                var profileid = 0;
                max1 -= 20;
                mhtml = "";
                loadmemberlist();
    };
    });
        
        $("#mnext").click(function() {
            pmax1 = max1+20;
            if(pmax1 <= Object.keys(members).length+20) {
                max1 += 20;
                mhtml = "";
                min1 += 20;
                loadmemberlist();
        };    
    });
    
        
});
function initdescs() {
    $(".mlistp").click(function(e) {
        var target = e.target || e.srcElement;
        clicked = target.innerHTML;
        name = clicked.split("<br>")[0];
        targetdesc = members[name]['desc'];
        if(targetdesc.length > 0) {
            converter = new showdown.Converter(),
            htmldesc = converter.makeHtml(targetdesc);
            document.getElementById("mtitle").innerHTML = name;
            document.getElementById("mdesc").innerHTML = htmldesc;
            $("#mmodal").modal("show");
        }
    });
};
function loadmemberlist() {
    var profileid = 0;
    $.each(members, function(i, item) {
        if(profileid < max1 && profileid >= min1) {
            if (profileid % mpids === 0) {mhtml += "</div><div class='row'>";}
                if(members[i]['desc'].length > 0) {
                    mhtml += "<div class='mlistp col-sm-3 text-center'><p class='clickable'>"+i+"<br><small>Click to read more</small></p></div>";  
                } else {
                    mhtml += "<div class='mlistp col-sm-3 text-center'><p>"+i+"</p></div>";  
                }
            }
        profileid++;
});
document.getElementById("members").innerHTML = mhtml;
initdescs();
}