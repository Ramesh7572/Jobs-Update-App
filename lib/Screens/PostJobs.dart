import 'package:flutter/material.dart';
import 'package:job_updates_app/Widgets/Drawer.dart';
import 'package:job_updates_app/Widgets/Filter.dart';

class PostJobs extends StatefulWidget {
  const PostJobs({Key? key}) : super(key: key);

  @override
  _PostJobsState createState() => _PostJobsState();
}

class _PostJobsState extends State<PostJobs> {
  String jobTypeVar = 'Select Job Type';
  String designationVar = 'Select Designation';
  String qualificationVar = 'Select Qualification';
  String locationVar = 'Select Location';
  String yearVar = 'Select Year';
  String percentageVar = 'Select Percentage';
  String specificationVar = 'Select Specification';

  var jobTypeList = ['Full Time', 'Part Time'];
  var designationList = [
    'Senior Developer',
    'Junior Developer',
    'Fres Developer'
  ];
  var qualificationList = [
    'B.Tech(CS/ME/BCA)',
    'M.Tech(CS/ME/BCA)',
    'BSC',
    'Polytechnic',
    'MCA',
    'CA'
  ];
  var locationList = [
    'Bangalore',
    'Noida',
    'Hyderabad',
    'Delhi',
    'Lucknow',
    'Gorakhpur'
  ];
  var yearList = ['2021', '2020', '2019'];
  var percentageList = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];
  var specificationList = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Filter()),
                  );
                },
                icon: Icon(Icons.filter_alt)),
          ]),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Column(
            children: [
              dropdownWidget('JOB  TYPE', jobTypeVar, jobTypeList),
              dropdownWidget('DESIGNATION', designationVar, designationList),
              dropdownWidget(
                  'QUALIFICATION', qualificationVar, qualificationList),
              dropdownWidget('JOB LOCATION', locationVar, locationList),
              dropdownWidget('YEAR OF PASSING', yearVar, yearList),
              dropdownWidget('PERCENTAGE', percentageVar, percentageList),
              dropdownWidget(
                  'SPECIFICATION', specificationVar, specificationList),
            ],
          ),
        ),
      ),
    );
  }

  Widget dropdownWidget(String title, String jobValues, List<String> jobList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.0),
        Text(
          title,
          style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        DropdownButton(
          itemHeight: 50.0,
          isExpanded: true,
          value: jobValues,
          icon: Icon(Icons.keyboard_arrow_down),
          items: jobList.map((String items) {
            return DropdownMenuItem(value: items, child: Text(items));
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              jobValues = newValue.toString();
            });
          },
        ),
      ],
    );
  }
}
