
import 'package:flutter/material.dart';
import 'package:gym_app_flutter/models/user.dart';
import 'package:gym_app_flutter/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gym_app_flutter/screens/wrapper.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Usermodel>.value(
      value: AuthService().user, //Aqui indicamos que stream es el que tiene que estucar este Stream provider
      child: MaterialApp(
          home: Wrapper(),
      ),
    );
  }
}
