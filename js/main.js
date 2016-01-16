// @license magnet:?xt=urn:btih:0b31508aeb0634b347b8270c7bee4d411b5d4109&dn=agpl-3.0.txt AGPL-v3-or-later

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

document.querySelector('#defaultIcon').href = 
    'assets/favicon_' + logoID + '.png';

var h = document.querySelector('.logo').innerHTML;
h = h.replace(/033cd2/g, COLORS[color][0]);
h = h.replace(/78e600/g, COLORS[color][1]);
document.querySelector('.logo').innerHTML = h;

// Only for the home page, but whatever
// https://developer.mozilla.org/en-US/docs/Browser_detection_using_the_user_agent#OS

function hide(e) {
    e.style.display = 'none';
}

var ua = navigator.userAgent.toLowerCase();
var get = {
    soas: document.querySelector('#get-soas'),
    desktop: document.querySelector('#get-desktop'),
    linux: document.querySelector('#get-sugar-linux'),
    sugarizer: document.querySelector('#get-sugarizer')
};
var l = document.querySelector('.creator-link');

if (ua.indexOf('mobile') !== -1 || ua.indexOf('tablet') !== -1) {
    hide(get.soas);  hide(get.linux);
} else if (ua.indexOf('linux') !== -1) {
    hide(get.desktop);  hide(get.sugarizer);
    //l.href = '/creator/linux';
} else if (ua.indexOf('windows') !== -1) {
    hide(get.desktop);  hide(get.linux);  hide(get.sugarizer);
    //l.href = '/creator/windows';
} else {}

// @license-end
