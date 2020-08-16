
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyBzN8vidFZlS4DwreJYxwmjYBXo84bUf74",
    authDomain: "react-firebase-3d0e4.firebaseapp.com",
    databaseURL: "https://react-firebase-3d0e4.firebaseio.com",
    projectId: "react-firebase-3d0e4",
    storageBucket: "react-firebase-3d0e4.appspot.com",
    messagingSenderId: "324192513334",
    appId: "1:324192513334:web:eb22be9197e07b0dc95797",
    measurementId: "G-K63L6QJXRV"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  //firebase.analytics();

  const auth = firebase.auth();

  function signUp(){

    var email = document.getElementById("email");
    var password = document.getElementById("password");

    const promise = auth.createUserWithEmailAndPassword(email.value , password.value);
    promise.catch(e => alert(e.message));

    alert ("Signed Up");
  }

  function signIn(){

    var email = document.getElementById("email");
    var password = document.getElementById("password");

    const promise = auth.signInWithEmailAndPassword(email.value , password.value);
    promise.catch(e => alert(e.message));

    //alert ("Signed In" + email );
  }

  function signOut(){
    auth.signOut();
    alert("Signed Out");
  }

  auth.onAuthStateChanged(function(user){
      if(user){

        var email = user.email;
        alert("Active User" + email )
      }

      else {
          alert("No Active User");
      }


  });
