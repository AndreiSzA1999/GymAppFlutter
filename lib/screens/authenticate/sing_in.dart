import "package:flutter/material.dart";
import 'package:gym_app_flutter/services/auth.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Gym App Fluuter"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text("Sing in anon"),
          onPressed: () async {
            dynamic result =  await _auth.signInAnon();
            if(result == null){
              print("Error signing in");
            }else{
              print("singed in");
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
