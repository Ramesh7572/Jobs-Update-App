import 'package:flutter/material.dart';
import 'package:job_updates_app/Screens/ViewApplyDetailsScreen.dart';
import 'package:job_updates_app/Widgets/Drawer.dart';

class AllJobsScreen extends StatefulWidget {
  const AllJobsScreen({Key? key}) : super(key: key);

  @override
  _AllJobsScreenState createState() => _AllJobsScreenState();
}

class _AllJobsScreenState extends State<AllJobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, snapshot) {
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UI Designer',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        RaisedButton(
                          elevation: 0.0,
                          padding: const EdgeInsets.all(0.0),
                          textColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 27.0, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.lightBlue,
                                      Colors.blue,
                                    ])),
                            child: Text("VIEW"),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ViewApplyDetailsScreen()),
                            );
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Organisation Name',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        workCont('2-3 Year', Icons.work),
                        SizedBox(width: 5.0),
                        workCont('Bangalore', Icons.location_city),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5.0),
                        Text('Photoshop Illustrater HTML CSS3 Bootstrap4')
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget workCont(String text, IconData iconData) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(iconData, size: 15, color: Colors.grey),
          SizedBox(width: 5.0),
          Text(text),
        ],
      ),
    );
  }
}
