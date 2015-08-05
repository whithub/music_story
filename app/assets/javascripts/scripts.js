//window.Fluidvids = function(e, t) {
//  "use strict";
//  var n, o, a = t.head || t.getElementsByTagName("head")[0],
//    i = ".fluidvids-elem{position:absolute;top:0px;left:0px;max-width:800px;max-height:501px;width:100%;height:100%;}.fluidvids{max-width:800px;max-height:501px;width:100%;position:relative;}",
//    l = function(e) {
//      return n = new RegExp("^(https?:)?//(?:" + o.join("|") + ").*$", "i"), n.test(e)
//    },
//    r = function(e, t, n) {
//      var o;
//      return function() {
//        var a = this,
//          i = arguments;
//        clearTimeout(o), o = setTimeout(function() {
//          o = null, n || e.apply(a, i)
//        }, t), n && !o && e.apply(a, i)
//      }
//    },
//    s = function(e) {
//      var n = t.createElement("div"),
//        o = e.parentNode,
//        a = parseInt(e.height ? e.height : e.offsetHeight, 10),
//        i = parseInt(e.width ? e.width : e.offsetWidth, 10),
//        l = a / i * 100;
//      o.insertBefore(n, e), e.className += " fluidvids-elem", n.className += " fluidvids", n.style.paddingTop = l + "%";
//      var r = parseInt(n.height ? n.height : n.offsetHeight);
//      r >= 501 && (n.style.paddingTop = "501px"), n.appendChild(e)
//    },
//    c = r(function() {
//      for (var e = t.querySelectorAll(".fluidvids"), n = 0; n < e.length; n++) {
//        var o = e[n].querySelectorAll("iframe")[0],
//          a = parseInt(o.height ? o.height : o.offsetHeight, 10),
//          i = parseInt(o.width ? o.width : o.offsetWidth, 10),
//          l = a / i * 100;
//        e[n].style.paddingTop = l + "%";
//        var r = parseInt(e[n].height ? e[n].height : e[n].offsetHeight);
//        r >= 501 && (e[n].style.paddingTop = "501px")
//      }
//    }, 250);
//  e.addEventListener("resize", c);
//  var u = function() {
//      var e = t.createElement("div");
//      e.innerHTML = "<p>x</p><style>" + i + "</style>", a.appendChild(e.childNodes[1])
//    },
//    d = function(e) {
//      var n = e || {},
//        a = n.selector || "iframe";
//      o = n.players || ["www.youtube.com", "player.vimeo.com"];
//      for (var i = t.querySelectorAll(a), r = 0; r < i.length; r++) {
//        var c = i[r];
//        l(c.src) && s(c)
//      }
//      u()
//    };
//  return {
//    init: d
//  }
//}(window, document), function(e, t) {function n() {function n(e) {
//  clearInterval($), e ? (T(M, "boom"), setTimeout(function() {
//    w(25, N), u(V, "next")
//  }, 700)) : (T(M, "boom"), setTimeout(function() {
//    w(25, N), u(V, "previous")
//  }, 700))
//}
//  var o, a, i, l, r, s = t.getElementById("js-content-block"),
//    c = 150,
//    d = 200;
//  e.addEventListener && (s.addEventListener("touchstart", function(t) {
//    if ("/" === e.location.pathname) {
//      var n = t.changedTouches[0];
//      i = 0, o = n.pageX, a = n.pageY, r = (new Date).getTime()
//    }
//  }, !1), s.addEventListener("touchmove", function(t) {
//    "/" === e.location.pathname && t.preventDefault()
//  }, !1), s.addEventListener("touchend", function(t) {
//    if ("/" === e.location.pathname) {
//      var s = t.changedTouches[0];
//      i = s.pageX - o, l = (new Date).getTime() - r;
//      var u = d >= l && i >= c && Math.abs(s.pageY - a) <= 100;
//      (i > 100 || -100 > i) && n(u), t.preventDefault()
//    }
//  }, !1))
//}function o() {
//  for (var e = t.querySelectorAll(".portfolio-list li a"), n = 0; n < e.length; n++) L(e[n], J(), Z)
//}function a() {
//  var e = t.getElementById("js-project-link");
//  e && L(e, z(), Z);
//  var n = t.getElementById("js-next"),
//    o = t.getElementById("js-previous");
//  n && L(n, z(), at), o && L(o, z(), it)
//}function i(n) {
//  G = !0, clearInterval($), k.setAttribute("class", "container"), k.innerHTML = "";
//  var o = t.querySelectorAll(".portfolio-list")[0];
//  o && o.parentNode.removeChild(o);
//  var a = B.querySelectorAll("li");
//  E(C, "white") && (T(C, "white"), T(_, "white")), O = !1, N.style.display = "block", N.style.width = "10%", I(M, / \url - \S + /g),A(M,"url-"+S(n));for(var i=0;i<a.length;i++){T(a[i],"sel");var l=a[i].getElementsByTagName("a")[0].getAttribute("href");"/
//    "!==l||" / "!==e.location.pathname&&-1===e.location.pathname.indexOf(" / portfolio / ")||A(a[i],"
//    sel ")," / about "===l&&" / about "===e.location.pathname&&" / about / "===e.location.pathname&&A(a[i],"
//    sel ")}" / "===n||" / index.html "===n?d(n):n.match(/portfolio/)?p(n):f(n)}function l(){var n=function(n){var o=this.parentNode.nextSibling.nextSibling.getBoundingClientRect().top,a=o+s().scrollTop;t.documentElement.scrollTop?s().scrollTop=a:e.scrollBy(0,a),n.preventDefault()},o=t.querySelectorAll(".arrow - down ")[0];L(o,z(),n)}function r(){t.body.scrollTop=0}function s(){return t.documentElement||t.body}function c(){clearInterval($),$=setInterval(function(){T(M,"
//    boom "),setTimeout(function(){w(25,N),u(V,"
//    next ")},700)},12e3)}function u(e,n){clearInterval(X),e="
//    previous "===n?e-=1:e+=1,e=e>P.length-1?0:e,e=0>e?P.length-1:e;var o=!1;V=e,k.setAttribute("
//  class ","
//    container "+P[e].homestyle);for(var i=k.querySelectorAll("
//    img "),l=0;l<i.length;l++)i[l].style.display="
//    none ";var r=t.getElementById(P[e].homestyle);if(r)o=!0;else{var s=new Image;s.src=x+P[e].homeimage,s.id=P[e].homestyle,s.className="
//    js - img ",s.alt="
//    homepage project image ",k.appendChild(s)}r=t.getElementById(P[e].homestyle);var c=t.getElementById("
//    js - project - link "),u=t.getElementById("
//    js - next "),d=t.getElementById("
//    js - previous ");u.setAttribute("
//    data - index ",e),d.setAttribute("
//    data - index ",e),c.setAttribute("
//    href ",P[e].slug),P[e].whitenav?(A(C,"
//    white "),A(_,"
//    white "),O=!0):(T(C,"
//    white "),T(_,"
//    white "),O=!1);var p=50;if(X=setInterval(function(){p+=5,w(p,N)},1e3),o)A(M,"
//    boom "),clearInterval(X),w(100,N),r.style.display="
//    inline - block ",r.style.opacity=1;else{var s=new Image;s.onload=function(){A(M,"
//    boom "),clearInterval(X),w(100,N),r.style.display="
//    inline - block ",r.style.opacity=1},s.src=r.getAttribute("
//    src ")}a()}function d(n){var a=new XMLHttpRequest;a.addEventListener("
//    progress ",function(e){y(e,N)},!1),a.open("
//    GET "," / partials / portfolio.html "),a.onreadystatechange=function(){if(4===a.readyState)if(200===a.status){t.title="
//    Mike Kus•"+t.querySelectorAll(".page - foot__strap ")[0].innerHTML,w(100,N),k.innerHTML=a.responseText;for(var i=k.querySelectorAll("
//    img "),l=0;l<i.length;l++)g(i[l],80*l);o(),r()}else e.location.href=n},a.send()}function p(n){var o=0,a=0,i=75,s=" / collections / "+n.replace(" / portfolio / ","
//    ")+".json ",c=new XMLHttpRequest;c.addEventListener("
//    progress ",function(e){y(e,N)},!1),c.open("
//    GET ",s),c.onreadystatechange=function(){if(4===c.readyState)if(200===c.status){w(75,N);var s=JSON.parse(c.responseText);k.innerHTML=s.collection[0].body,o=k.querySelectorAll("
//    img ").length,a=Math.ceil(25/o),t.title="
//    Portfolio: "+s.collection[0].title+": Mike Kus•"+t.querySelectorAll(".page - foot__strap ")[0].innerHTML;for(var u=k.querySelectorAll("
//    img "),d=[],p=0,f=0;f<u.length;f++)d[f]=new Image,d[f].onload=function(){if(p++,i+=a,w(i,N),p===u.length-1){r(),w(100,N),t.querySelectorAll(".portfolio - item__header ")[0].innerHTML+='<a class="
//    arrow - down " href="#jump " id="
//    jump "></a>',l();for(var e=k.querySelectorAll("
//    section "),n=0;n<e.length;n++)e[n].style.opacity=1}},d[f].src=u[f].getAttribute("
//    src ");G=!1,Fluidvids.init({selector:"
//    iframe ",players:["
//    www.youtube.com ","
//    player.vimeo.com "]})}else e.location.href=n},c.send()}function f(n){var o=new XMLHttpRequest;o.addEventListener("
//    progress ",function(e){y(e,N)},!1),o.open("
//    GET "," / partials "+n+".html "),o.onreadystatechange=function(){if(4===o.readyState)if(200===o.status){if(t.title="
//    Mike Kus•"+t.querySelectorAll(".page - foot__strap ")[0].innerHTML,w(100,N),k.innerHTML=o.responseText,r(),(" / about "===n||" / about / "===n)&&(t.querySelectorAll(".portfolio - item__header ")[0].innerHTML+='<a class="
//    arrow - down " href="#jump " id="
//    jump "></a>',l())," / about "===n||" / about / "===n){var a=t.getElementById("
//    js - get - in -touch ");a&&a.addEventListener(z(),Z,!1);var i=0,s=0,c=0;rt=k.querySelectorAll("
//    img "),i=rt.length,s=Math.ceil(100/i);for(var u=0;u<rt.length;u++)c+=s,w(c,N),v(rt[u],80*u,c);for(var d=t.querySelectorAll(".portfolio - list li img "),u=0;u<d.length;u++)g(d[u],80*u)}}else e.location.href=n},o.send()}function h(){var e=m(t.getElementsByTagName("
//    html ")[0],"
//    max - width ").replace("
//    px ","
//    "),n=t.querySelectorAll("
//    meta[name = viewport]")[0];"
//    none "!=e?n.setAttribute("
//    content ","
//    width = "+e+", initial - scale = 1 "):n.setAttribute("
//    content ","
//    width = device - width, initial - scale = 1 ")}function m(e,n){var o,a=(e.ownerDocument||t).defaultView;return a&&a.getComputedStyle?(n=n.replace(/([A-Z])/g," - $1 ").toLowerCase(),a.getComputedStyle(e,null).getPropertyValue(n)):e.currentStyle?(n=n.replace(/\-(\w)/g,function(e,t){return t.toUpperCase()}),o=e.currentStyle[n],/^\d+(em|pt|%|ex)?$/i.test(o)?function(t){var n=e.style.left,o=e.runtimeStyle.left;return e.runtimeStyle.left=e.currentStyle.left,e.style.left=t||0,t=e.style.pixelLeft+"
//    px ",e.style.left=n,e.runtimeStyle.left=o,t}(o):o):void 0}function v(e,t,n){var o=new Image;o.onload=function(){if(n)for(var e=k.querySelectorAll("
//    section "),t=0;t<e.length;t++)e[t].style.opacity=1},o.src=e.getAttribute("
//    src ")}function g(e,t){var n=new Image;n.onload=function(){setTimeout(function(){e.style.opacity=1},t)},n.src=e.getAttribute("
//    src ")}function y(e,t){e.lengthComputable?t.style.width=e.loaded/e.total*100+" % ":w(50,t)}function w(e,t){t.style.width=e+" % ",e>=100&&setTimeout(function(){t.style.display="
//    none "},350)}function b(t){"
//    pushState "in history?history.pushState(null,null,t):e.location.href=t}function E(e,t){return new RegExp("
//    "+t+"
//    ").test("
//    "+e.className+"
//    ")}function A(e,t){e&&!E(e,t)&&(e.className+="
//    "+t)}function T(e,t){var n="
//    "+e.className.replace(/[\t\r\n]/g,"
//    ")+"
//    ";if(E(e,t)){for(;n.indexOf("
//    "+t+"
//    ")>=0;)n=n.replace("
//    "+t+"
//    ","
//    ");e.className=n.replace(/^\s+|\s+$/g,"
//    ")}}function I(e,t){var n=e.className.match(t);T(e,n)}function S(e){return e.toLowerCase().replace(/[^\w ]+/g,"
//    ").replace(/ +/g," - ")}function L(t,n,o){e.addEventListener?t.addEventListener(n,o,!1):t.attachEvent("
//    on "+n,o)}var x="
//    ",j=t.getElementsByTagName("
//    body ")[0],B=t.getElementById("
//    js - menu - nav "),q=t.getElementById("
//    js - social - nav ");j.innerHTML+='<div id="
//    page - loader " style="
//    display: none;
//    "></div>';var M=t.getElementsByTagName("
//    html ")[0],H=t.getElementById("
//    js - overlay "),N=t.getElementById("
//    page - loader "),k=t.getElementById("
//    js - content - block "),C=t.getElementById("
//    js - page - head "),_=t.getElementById("
//    js - project - nav "),D=t.getElementById("
//    js - footer - nav "),R=t.getElementById("
//    js - menu ");B=t.getElementById("
//    js - menu - nav "),q=t.getElementById("
//    js - social - nav ");var X,$,F=!1,G=!1,K=location.href,O=E(C,"
//    white "),P=[],V=0;if(!E(M,"
//    svg ")){var W=t.getElementsByTagName("
//    noscript ")[0],Y=W.childNodes[0].data;t.head.innerHTML+=Y}var z=function(){return e.addEventListener?"
//    ontouchstart "in e?"
//    touchstart ":"
//    click ":"
//    click "},J=function(){return"
//    click "},U=function(t){H.setAttribute("
//    data - state ","
//    visible "===H.getAttribute("
//    data - state ")?"
//    hidden ":"
//    visible "),this.setAttribute("
//    data - state ","
//    open "===this.getAttribute("
//    data - state ")?"
//    closed ":"
//    open "),"
//    open "===this.getAttribute("
//    data - state ")&&O?(T(C,"
//    white "),T(_,"
//    white ")):O&&(A(C,"
//    white "),A(_,"
//    white ")),"
//    open "===this.getAttribute("
//    data - state ")?clearInterval($):" / "===e.location.pathname&&c(),t.preventDefault()};L(R,z(),U);for(var Z=function(e){var t=this.getAttribute("
//    href ");k.innerHTML="
//    ",H&&(H.setAttribute("
//    data - state ","
//    hidden "),R.setAttribute("
//    data - state ","
//    hidden ")),b(t),i(t),e.preventDefault()},Q=H.querySelectorAll(".menu - nav li a "),et=0;et<Q.length;et++)L(Q[et],z(),Z);for(var tt=B.querySelectorAll("
//    li a "),nt=D.querySelectorAll("
//    li a "),et=0;et<tt.length;et++)L(tt[et],z(),Z);for(var et=0;et<nt.length;et++)L(nt[et],z(),Z);var ot=t.getElementById("
//    js - get - in -touch ");ot&&L(ot,z(),Z),(e.location.pathname.match(/portfolio/)||" / "===e.location.pathname)&&o();var at=function(e){clearInterval($),T(M,"
//    boom "),setTimeout(function(){w(25,N),u(V,"
//    next ")},700),e.preventDefault()},it=function(e){clearInterval($),T(M,"
//    boom "),setTimeout(function(){w(25,N),u(V,"
//    previous ")},700),e.preventDefault()};n(),e.addEventListener&&e.addEventListener("
//    keyup ",function(n){if(" / "===e.location.pathname){if(38===n.keyCode||40===n.keyCode){var o=t.getElementById("
//    js - project - link ");i(o.getAttribute("
//    href "))}39===n.keyCode&&(clearInterval($),T(M,"
//    boom "),setTimeout(function(){w(25,N),u(V,"
//    next ")},700)),37===n.keyCode&&(clearInterval($),T(M,"
//    boom "),setTimeout(function(){w(25,N),u(V,"
//    previous ")},700)),n.preventDefault()}},!1),a(),Fluidvids.init({selector:"
//    iframe ",players:["
//    www.youtube.com ","
//    player.vimeo.com "]}),setTimeout(function(){A(M,"
//    boom ")},100),e.addEventListener&&(h(),e.addEventListener("
//    orientationchange ",function(){h()},!1));var lt=t.querySelectorAll(".portfolio - item__header ")[0];if(lt&&" / contact "!=e.location.pathname&&(lt.innerHTML+='<a class="
//    arrow - down " href="#jump " id="
//    jump "></a>',l())," / portfolio "===e.location.pathname||" / about "===e.location.pathname||" / index.html "===e.location.pathname||" / "===e.location.pathname||" / about / "===e.location.pathname)for(var rt=t.querySelectorAll(".portfolio - list li img "),et=0;et<rt.length;et++)g(rt[et],80*et);if(e.location.pathname.match(/portfolio/)||" / about "===e.location.pathname||" / "===e.location.pathname||" / about / "===e.location.pathname){var st=0,ct=0,ut=0;rt=k.querySelectorAll("
//    img "),st=rt.length,ct=Math.ceil(100/st);for(var et=0;et<rt.length;et++)ut+=ct,w(ut,N),v(rt[et],80*et,ut)}e.addEventListener&&e.addEventListener("
//    popstate ",function(){var t=!F&&location.href==K;F=!0,t||(" / "===location.pathname&&(e.location.href=" / "),i(location.pathname))},!1)}(window,document);
