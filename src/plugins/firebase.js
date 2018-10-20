const firebase = require("firebase/app")
require("firebase/firestore")

firebase.initializeApp({
    apiKey: "AIzaSyDjp4V0uT5Z5xPILtWd8HR-l3wla2IeKDg",
    authDomain: "busca-lena.firebaseapp.com",
    databaseURL: "https://busca-lena.firebaseio.com",
    projectId: "busca-lena",
    storageBucket: "busca-lena.appspot.com",
    messagingSenderId: "590109680061"
})

export const db = firebase.firestore()

export default ({ app, router, Vue }) => {
    Vue.prototype.$db = db
}
