(this.webpackJsonp4dfhjre=this.webpackJsonp4dfhjre||[]).push([[0],{13:function(t,n,e){},16:function(t,n,e){},18:function(t,n,e){"use strict";e.r(n);var o=e(1),a=e.n(o),i=e(3),r=e.n(i),c=(e(13),e(4)),s=e(5),u=e(8),h=e(7),d=e(6),f=e.n(d),j=function(t){var n=0;t.setup=function(){t.createCanvas(t.windowWidth,t.windowHeight,t.WEBGL)},t.myCustomRedrawAccordingToNewPropsHandler=function(t){t.rotation&&(n=t.rotation*Math.PI/180)},t.draw=function(){t.background(100),t.normalMaterial(),t.noStroke(),t.push(),t.rotateY(n),t.box(100),t.pop()}},p=(e.p,e(16),e(0)),b=function(t){Object(u.a)(e,t);var n=Object(h.a)(e);function e(t){var o;return Object(c.a)(this,e),(o=n.call(this,t)).state={rotation:45},o}return Object(s.a)(e,[{key:"rotationChange",value:function(t){this.setState({rotation:t.target.value})}},{key:"render",value:function(){return Object(p.jsxs)("div",{children:[Object(p.jsx)(f.a,{sketch:j,rotation:this.state.rotation}),Object(p.jsx)("input",{type:"range",value:this.state.rotation,min:"0",max:"360",step:"1",onInput:this.rotationChange.bind(this)})]})}}]),e}(o.Component),l=function(t){t&&t instanceof Function&&e.e(3).then(e.bind(null,19)).then((function(n){var e=n.getCLS,o=n.getFID,a=n.getFCP,i=n.getLCP,r=n.getTTFB;e(t),o(t),a(t),i(t),r(t)}))};r.a.render(Object(p.jsx)(a.a.StrictMode,{children:Object(p.jsx)(b,{})}),document.getElementById("root")),l()}},[[18,1,2]]]);
//# sourceMappingURL=main.f4f77582.chunk.js.map