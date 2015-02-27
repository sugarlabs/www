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
