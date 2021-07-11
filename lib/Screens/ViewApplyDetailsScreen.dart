import 'package:flutter/material.dart';
import 'package:job_updates_app/Widgets/Drawer.dart';

class ViewApplyDetailsScreen extends StatefulWidget {
  const ViewApplyDetailsScreen({Key? key}) : super(key: key);

  @override
  _ViewApplyDetailsScreenState createState() => _ViewApplyDetailsScreenState();
}

class _ViewApplyDetailsScreenState extends State<ViewApplyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: AppBar(
            // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignUpScreen()),
                    // );
                  },
                  icon: Icon(Icons.filter_alt)),
            ]),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UI Designer',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Organisation Name',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    workCont('2-3 Year', Icons.work),
                    SizedBox(width: 5.0),
                    workCont('Bangalore', Icons.location_city),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Icon(
                      Icons.menu_book,
                      size: 18,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    Text('Photoshop Illustrater HTML CSS3 Bootstrap4')
                  ],
                ),
                SizedBox(height: 5.0),
                roeTextValue('Job Posted:', '25 july 2020'),
                roeTextValue('Job Type:', 'Full Time'),
                roeTextValue('Designation:', 'Junior Software Eng.'),
                roeTextValue(
                    'Qualification:', 'B.Tech/MCA/M.Tech(2020 & 2021)'),
                roeTextValue(
                    'Specialization:', 'Full Stack Android Development'),
                roeTextValue('Last Date Of Application:', '25 july 2021'),
                roeTextValue('Job Description:', ''),
                SizedBox(height: 10.0),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: 16, wordSpacing: 10),
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  elevation: 0.0,
                  padding: const EdgeInsets.all(0.0),
                  textColor: Colors.white,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.lightBlue,
                              Colors.blue,
                            ])),
                    child: Text("APPLY"),
                  ),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                ),
              ],
            ),
          ),
        ));
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

  Widget roeTextValue(String key, String value) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        Row(
          children: [
            Text(
              key,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5.0),
            Text(
              value,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
