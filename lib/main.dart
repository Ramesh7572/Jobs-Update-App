import 'package:flutter/material.dart';
import 'package:job_updates_app/Screens/AllJobsScreen.dart';
import 'package:job_updates_app/Screens/SignupScreen.dart';
import 'package:job_updates_app/Screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
