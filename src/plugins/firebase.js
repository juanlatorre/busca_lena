import * as firebase from 'firebase'

const config = {
    apiKey: "AIzaSyDjp4V0uT5Z5xPILtWd8HR-l3wla2IeKDg",
    authDomain: "busca-lena.firebaseapp.com",
    databaseURL: "https://busca-lena.firebaseio.com",
    projectId: "busca-lena",
    storageBucket: "busca-lena.appspot.com",
    messagingSenderId: "590109680061"
}

const fireApp = firebase.initializeApp(config)

export const DB = fireApp.firestore()

export default ({ app, router, Vue }) => {
    Vue.prototype.$db = DB
}
