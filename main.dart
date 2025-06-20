import 'package:email/Homepage.dart';
import 'package:email/ImageGet.dart';
import 'package:email/CameraApp.dart';
import 'package:email/Responsiveness.dart';
import 'package:email/res.dart';

import 'package:email/theme.dart';
import 'package:email/VideoPlayer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Splashscreen.dart';
import 'firebase_options.dart';
import 'login.dart';



Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyAppp());
}

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }

}

