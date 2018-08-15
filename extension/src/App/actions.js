
export default {

  init() {
    chrome.runtime.sendMessage({
      action: "get_status"
    }, function (response) {
      if (response.active) {
        this.set_started();
      } else {
        if (!response.empty) {
          this.set_stopped()
        }
        chrome.tabs.getSelected(null, function (tab) {
          document.forms[0].elements["url"].value = tab.url;
        });
      }
    });
  },

  start() {
    var url = document.forms[0].elements["url"].value;
    if (url == "") { return false  }
    if ((url.indexOf("http://") == -1) && (url.indexOf("https://"))) { url = "http://" + url; }
    this.set_started()
    this.recorder.start(url);

    return false;
  },

  set_started() {
    var e = document.getElementById("bstop");
    e.style.display = '';
    e.onclick = this.stop;
    e.value = "Stop Recording";
    e = document.getElementById("bgo");
    e.style.display = 'none';
    e = document.getElementById("bcomment");
    e.style.display = '';
    e = document.getElementById("bexport");
    e.style.display = 'none';
    e = document.getElementById("bexportxy");
    e.style.display = 'none';
    e = document.getElementById("bdoc");
    e.style.display = 'none';
  },

  stop() {
    this.set_stopped();
    this.recorder.stop();
    return false;
  },

  set_stopped() {
    var e = document.getElementById("bstop");
    e.style.display = 'none';
    e = document.getElementById("bgo");
    e.style.display = '';
    e = document.getElementById("bcomment");
    e.style.display = 'none';
    e = document.getElementById("bexport");
    e.style.display = '';
    e = document.getElementById("bexportxy");
    e.style.display = '';
    e = document.getElementById("bdoc");
    e.style.display = '';
  },

  showcomment() {
    var e = document.getElementById("bcomment");
    e.style.display = 'none';
    e = document.getElementById("comment");
    e.style.display = '';
    e = document.getElementById("ctext");
    e.focus();
    return false;
  },

  hidecomment(bsave) {
    var e = document.getElementById("bcomment");
    e.style.display = '';
    e = document.getElementById("comment");
    e.style.display = 'none';
    e = document.getElementById("ctext");
    if (bsave) {
      var txt = e.value;
      if (txt && txt.length > 0) {
        this.recorder.addComment(e.value, null);
      }
    }
    e.value = "";
    return false;
  },

  export (options) {
    if (options && options.xy) {
      chrome.tabs.create({
        url: "./nightwatch.html?xy=true"
      });
    } else {
      chrome.tabs.create({
        url: "./nightwatch.html"
      });
    }
  },

  exportdoc(bexport) {
    chrome.tabs.create({
      url: "./doc.html"
    });
  }
}