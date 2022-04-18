import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

void main() => runApp(plan());
DatePickerController dp = DatePickerController();

class plan extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      home: Home(),
    );
  }
}

List<Map<String, dynamic>> habits = [
  {
    'color': Colors.blue,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1599058918144-1ffabb6ab9a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80'),
    'fulltext': 'Strength & Resistance Starter ',
  },
  {
    'color': Colors.red,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1616279967983-ec413476e824?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=852&q=80'),
    'fulltext': 'Full Body Tonning',
  },
  {
    'color': Colors.cyan,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80'),
    'fulltext': 'Fit & Strong',
  },
];
List<Map<String, dynamic>> habits2 = [
  {
    'color': Colors.blue,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1528304270437-714a2d6fbb6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
    'fulltext': 'Fit Life Starter',
  },
  {
    'color': Colors.red,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1518611012118-696072aa579a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
    'fulltext': 'Fit & Strong',
  },
  {
    'color': Colors.cyan,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1536922246289-88c42f957773?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=904&q=80'),
    'fulltext': 'Full Stack Fitness',
  },
];
List<Map<String, dynamic>> habits3 = [
  {
    'color': Colors.blue,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1622214628506-f55f72b92b46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
    'fulltext': 'Weight Loss Starter',
  },
  {
    'color': Colors.red,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1574406280735-351fc1a7c5e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=751&q=80'),
    'fulltext': 'Just Stay Fit',
  },
  {
    'color': Colors.cyan,
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1581122584612-713f89daa8eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
    'fulltext': 'Endurance Builder',
  },
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff131b26),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 25.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Your Fitness Tracker",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                //between the top text and calendar
                height: 15.0,
              ),
              Container(
                  height: 110, //background of calendar
                  decoration: BoxDecoration(
                    color: Color(0xff59cd3f),
                    //color: Colors.grey[700],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [datePickerMethod()], //????????
                  )),
              SizedBox(
                height: 35.0, //between fitness plan text and calendar
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Select a Fitness Plan! ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    title: Text(
                      'Gain Muscle',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'These plans focus on building muscle mass and strength.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: habits.length,
                  itemBuilder: (ctx, id) {
                    return Container(
                      width: 160,
                      margin:
                          EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
                      padding: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: habits[id]['image'], fit: BoxFit.cover),
                        //child: image
                        color: habits[id]['color'],

                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: habits[id]['color'],
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            habits[id]['fulltext'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                height: 70,
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    title: Text(
                      'Lose Fat',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'These training plans are all about burning fat and calories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: habits.length,
                  itemBuilder: (ctx, id) {
                    return Container(
                      width: 160,
                      margin:
                          EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
                      padding: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: habits3[id]['image'], fit: BoxFit.cover),
                        color: habits3[id]['color'],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: habits3[id]['color'],
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            habits3[id]['fulltext'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 70,
                // color: Colors.white,
                // padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    title: Text(
                      'Get Fitter',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'Training plans designed to improve or maintain your physical condition.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: habits2.length,
                  itemBuilder: (ctx, id) {
                    return Container(
                      width: 160,
                      margin:
                          EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
                      padding: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: habits2[id]['image'], fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: habits2[id]['color'],
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            habits2[id]['fulltext'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
        top: false,
    );
  }
}

DatePicker datePickerMethod() {
  return DatePicker(
    DateTime.now(),
    controller: dp,
    initialSelectedDate: DateTime.now(),
    selectionColor: Colors.blueAccent,
    selectedTextColor: Colors.white,
  );
}
