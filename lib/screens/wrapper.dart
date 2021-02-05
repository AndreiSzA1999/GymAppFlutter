import 'package:flutter/material.dart';
import 'package:gym_app_flutter/models/user.dart';
import 'package:gym_app_flutter/screens/authenticate/authenticate.dart';
import 'package:gym_app_flutter/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usermodel>(context);

    //Return either home or authenticate widget
    if (user == null){
      return Authenticate();
    }else{
      return Home();
    }

  }
}