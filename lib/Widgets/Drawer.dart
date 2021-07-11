import 'package:flutter/material.dart';
import 'package:job_updates_app/Screens/AllJobsScreen.dart';
import 'package:job_updates_app/Screens/PostJobs.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.lightBlue,
              Colors.blue,
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllJobsScreen()),
                    );
                  },
                  child: navigationItems(Icons.work, 'Jobs')),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostJobs()));
                  },
                  child: navigationItems(Icons.download_sharp, 'Post a Job')),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllJobsScreen()));
                  },
                  child: navigationItems(Icons.settings, 'Profile Settings')),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllJobsScreen()));
                  },
                  child: navigationItems(Icons.password, 'Change Password')),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllJobsScreen()));
                  },
                  child: navigationItems(Icons.logout, 'Sign Out')),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigationItems(IconData icn, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icn, color: Colors.white, size: 20),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
