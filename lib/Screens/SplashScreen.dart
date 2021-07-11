import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_updates_app/Screens/AllJobsScreen.dart';
import 'package:job_updates_app/Screens/LoginScreen.dart';
import 'package:job_updates_app/Screens/SignupScreen.dart';
import 'package:job_updates_app/Screens/ViewApplyDetailsScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AllJobsScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.blue.shade600, Colors.blue.shade900],
      )),
      child: Center(
          child: Icon(
        Icons.search,
        size: 100,
        color: Colors.white54,
      )),
    );
  }
}
