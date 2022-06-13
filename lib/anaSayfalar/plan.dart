import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

import '../araSayfalar/gainMuscle.dart';
import '../araSayfalar/getFitter.dart';
import '../araSayfalar/loseFat.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitnessapp1/pages/home.dart';

String todayDuration="test";


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(plan());

}



class plan extends StatefulWidget {
  const plan({Key? key}) : super(key: key);

  @override
  State<plan> createState() => _planState();
}

class _planState extends State<plan> {
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

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent('Exercise Summary',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day , 11, 5),
        endTime: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day),
        color: Colors.orange,
        isMultiDay: true),
    NeatCleanCalendarEvent('Exercise Summary:',
        startTime: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day - 8),
        endTime: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day -1),
        color: Colors.pink,
        isAllDay: true),

  ];




  yaziGetir() {
    //String gh = todayDoc();
    FirebaseFirestore.instance
        .collection("durations")
        .doc(lastData.toString())
        .get()
        .then((gelenVeri) {
      setState(() {
        todayDuration = gelenVeri.data()!['status'];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
    setState(() {

    });
    todayDuration;
    yaziGetir();

  }

  @override
  Widget build(BuildContext context) {
      return SafeArea(
      child: Calendar(
        startOnMonday: true,
        weekDays: const ['Mo', 'Tue', 'Wed', 'Th', 'Fr', 'Sa', 'Su'],
        eventsList: _eventList,
        isExpandable: true,
        eventDoneColor: Colors.yellow,
        selectedColor: Colors.pink,
        selectedTodayColor: Colors.green,
        todayColor: Colors.blue,
        eventColor: null,
        //locale: 'de_DE',
        todayButtonText: todayDuration,
        allDayEventText: todayDuration,
        multiDayEndText: "aaaaa",
        isExpanded: true,
        expandableDateFormat: 'EEEE, dd. MMMM yyyy',
        datePickerType: DatePickerType.date,
        dayOfWeekStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
      ),
    );
  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Your Fitness Tracker!",
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        toolbarHeight: 16,
      ),
      backgroundColor: Color(0xffe5ecec),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 0.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: CalendarScreen(),
              height: 420,
              width: 500,
            ),
            SizedBox(
              //between the top text and calendar
              height: 5.0,
            ),
            Divider(),
            SizedBox(
              height: 5.0, //between fitness plan text and calendar
            ),
            Container(
              // height: 200,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Select a Fitness Plan! ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              child: Card(
                color: Colors.blue,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => gainMuscle(),
                      ),
                    );
                  },
                  isThreeLine: true,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: habits.length,
                itemBuilder: (ctx, id) {
                  return Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
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
              height: 100,
              child: Card(
                color: Colors.blue,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loseFat(),
                      ),
                    );
                  },
                  isThreeLine: true,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: habits.length,
                itemBuilder: (ctx, id) {
                  return Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
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
              height: 100,
              child: Card(
                color: Colors.blue,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => getFitter(),
                      ),
                    );
                  },
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
                    margin: EdgeInsets.only(right: 15.0, top: 9.0, bottom: 9.0),
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
    );
  }
}
