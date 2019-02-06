var Parse = require('parse')

Parse.initialize("SUqPMsrtq40mMp0TMovSJJSCbe8neoJZtscTRRof","8ozLkIKaFspE6rca98OJVizWbutFGCtwxYRcgrkv")
Parse.serverURL = 'https://parseapi.back4app.com/'

window.fbAsyncInit = function() {
    Parse.FacebookUtils.init({
        appId      : '{facebook-app-id}',
        cookie     : true,
        xfbml      : true,
        version    : 'v3.2'
    });

    // Put here code to run after the Facebook SDK is loaded.
}

(function(d, s, id){
	var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'))


export default ({ app, router, Vue }) => {
    Vue.prototype.$parse = Parse
}
