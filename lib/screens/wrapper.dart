import 'package:flutter/material.dart';
import 'package:gym_app_flutter/screens/authenticate/authenticate.dart';
import 'package:gym_app_flutter/screens/authenticate/sing_in.dart';
import 'package:gym_app_flutter/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return either home or authenticate widget
    return Authenticate();
  }
}