import 'package:flutter/material.dart';
import 'package:gym_app_flutter/services/auth.dart';

class Home extends StatelessWidget {

    AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Gym App Flutter"),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: [
          FlatButton.icon(
              onPressed:() async{
                await _auth.singout();
              },
              icon: Icon(Icons.person),
              label: Text('Logout'))
        ],
      ),
    );

  }
}
