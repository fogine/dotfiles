const {classes: Cc, interfaces: Ci, utils: Cu} = Components;

Cu.import("resource://gre/modules/XPCOMUtils.jsm");
Cu.import("resource://gre/modules/Services.jsm");
Cu.import("resource://gre/modules/NetUtil.jsm");

let resource = Services.io.getProtocolHandler("resource").QueryInterface(Ci.nsIResProtocolHandler);

var sss = Cc["@mozilla.org/content/style-sheet-service;1"].getService(Ci.nsIStyleSheetService);
var uri = NetUtil.newURI("resource://sysicons/css/sysicons.css");

function install() {}
function uninstall() {}

function startup(aData, aReason) {

  let alias = Services.io.newFileURI(aData.installPath);
  if (!aData.installPath.isDirectory())
    alias = Services.io.newURI("jar:" + alias.spec + "!/", null, null);
  
  this.resource.setSubstitution("sysicons", alias);

  if (!this.sss.sheetRegistered(uri, this.sss.USER_SHEET)) this.sss.loadAndRegisterSheet(uri, this.sss.USER_SHEET);
}

function shutdown(aData, aReason) {
  if (aReason == APP_SHUTDOWN) return;
  
  if (this.sss.sheetRegistered(uri, this.sss.USER_SHEET)) this.sss.unregisterSheet(uri, this.sss.USER_SHEET);
  
  this.resource.setSubstitution("sysicons", null);
}
