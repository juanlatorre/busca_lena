var Parse = require('parse')

Parse.initialize("SUqPMsrtq40mMp0TMovSJJSCbe8neoJZtscTRRof","8ozLkIKaFspE6rca98OJVizWbutFGCtwxYRcgrkv")
Parse.serverURL = 'https://parseapi.back4app.com/'

export default ({ app, router, Vue }) => {
    Vue.prototype.$parse = Parse
}
