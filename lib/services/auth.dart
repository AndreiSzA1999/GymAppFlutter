import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_app_flutter/models/user.dart';



class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser

  Usermodel _userFromFirebaseUser(User user){
    return user != null ? Usermodel(user.uid): null;
  }
  //auth change user stream
  Stream<Usermodel> get user{
    return _auth.authStateChanges()
        .map(_userFromFirebaseUser);
  }

  //sing in anon methon
  Future signInAnon() async{
    try{
     UserCredential result =  await _auth.signInAnonymously();
     User user = result.user;
     return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }





  //sing in with email and password

  //register with email & password

  //sing out

  Future singout() async{
    try{
        return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}