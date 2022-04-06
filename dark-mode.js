// ==UserScript==
// @name Dark Mode
// @match *
// @run-at document-start
// @exclude facebook.com
// @exclude vercel.com
// @exclude notion.so
// @exclude swr.vercel.app
// @exclude youtube.com
// @exclude google.com
// @exclude github.com
// @exclude reddit.com
// @exclude sflix.to
// @exclude pomofocus.io
// @exclude beta.reactjs.org
// @exclude developer.mozilla.org
// @exclude nextjs.org
// @exclude tailwindcss.com
// ==/UserScript==

var style = document.createElement('style')

style.textContent = `
  html {
    background-color: #ddd;
    filter: hue-rotate(180deg) invert(100%) !important;
  }
  body {
    margin: 0;
    background-color: #ddd;
    /* twitter.com */
    min-height: 100vh;
  }
  
  iframe, img, video, canvas {
  filter: hue-rotate(180deg) invert(100%) !important;
  }
  `

document.head.appendChild(style)
