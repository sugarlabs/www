// JavaScript Document

// DropDownMenu by Miha Hribar
// http://hribar.info

function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function() {
            oldonload();
            func();
        }
    }
}

function prepareMenu() {
    // first lets make sure the browser understands the DOM methods we will be using
  	if (!document.getElementsByTagName) return false;
  	if (!document.getElementById) return false;
  	
  	// lets make sure the element exists
  	if (!document.getElementById("menu")) return false;
  	var menu = document.getElementById("menu");
  	
  	// for each of the li on the root level check if the element has any children
  	// if so append a function that makes the element appear when hovered over
  	var root_li = menu.getElementsByTagName("li");
  	for (var i = 0; i < root_li.length; i++) {
  	    var li = root_li[i];
  	    // search for children
  	    var child_ul = li.getElementsByTagName("ul");
  	    if (child_ul.length >= 1) {
  	        // we have children - append hover function to the parent
  	        li.onmouseover = function () {
  	            if (!this.getElementsByTagName("ul")) return false;
  	            var ul = this.getElementsByTagName("ul");
  	            ul[0].style.display = "block";
  	            return true;
  	        }
  	        li.onmouseout = function () {
  	            if (!this.getElementsByTagName("ul")) return false;
  	            var ul = this.getElementsByTagName("ul");
  	            ul[0].style.display = "none";
  	            return true;
  	        }
  	    }
  	}
  	
  	return true;
}

addLoadEvent(prepareMenu);