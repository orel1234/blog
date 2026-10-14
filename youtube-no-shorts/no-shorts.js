// Opens /shorts/<id> as a regular video (/watch?v=<id>), including links
// clicked inside YouTube, which navigates without a full page load.
(function () {
  function redirectShorts() {
    const match = location.pathname.match(/^\/shorts\/([\w-]+)/);
    if (match) {
      location.replace("/watch?v=" + match[1]);
    }
  }

  redirectShorts();
  document.addEventListener("yt-navigate-start", redirectShorts);
  document.addEventListener("yt-navigate-finish", redirectShorts);
  window.addEventListener("popstate", redirectShorts);
})();
