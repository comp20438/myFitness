import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitnessapp1/anaSayfalar/chart.dart';
import 'package:fitnessapp1/anaSayfalar/exercise.dart';

import 'package:fitnessapp1/anaSayfalar/plan.dart';
import 'package:fitnessapp1/anaSayfalar/profil.dart';

import 'package:fitnessapp1/pages/login.dart';
import 'package:fitnessapp1/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}
int lastData=1;
class _HomePageState extends State<HomePage> {
  StreamController<int> streamController = StreamController();
  Timer? timer;
  Duration timerInterval = Duration(seconds: 1);
  int counter = 0;
  AuthService _authService = AuthService();
  int _selectedIndex = 0;
  PageController pageController = PageController();
  var hoursStr = "00",
      minutesStr = "00",
      secondsStr = "00";
  var timerStream, timerSubscription;

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  Stream<int> stopWatchStream() {
    counter = 0;
    timerInterval = Duration(seconds: 1);

    void stopTimer() {
      if (timer != null) {
        timer?.cancel();
      }
    }
    void cancelTimer2() {
      if (timer != null) {
        timer?.cancel();
        addData();
      }
    }


    void tick(_) {
      counter++;
      streamController.add(counter);
    }

    void startTimer() {
      print("hi");
      timer = Timer.periodic(timerInterval, tick);
    }


    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: cancelTimer2,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }

  int i = 0;

  addData() {
    i = i + 1;
    String a = i.toString();
    FirebaseFirestore.instance.collection("durations").doc(a).set(
        {'status': "$hoursStr:$minutesStr:$secondsStr"});
    lastData = i;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$hoursStr:$minutesStr:$secondsStr",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            if (timerStream == null && timerSubscription == null) {
              timerStream = stopWatchStream();
              timerSubscription = timerStream.listen((int newTick) {
                setState(() {
                  hoursStr = ((newTick / (60 * 60)) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, '0');
                  minutesStr = ((newTick / 60) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, '0');
                  secondsStr =
                      (newTick % 60).floor().toString().padLeft(2, '0');
                });
              },);
            } else {
              timerSubscription.resume();
            }
          }, icon: Icon(Icons.not_started_outlined)),
          IconButton(onPressed: () {
            timerSubscription.pause();
          }, icon: Icon(Icons.pause_outlined)),

          IconButton(onPressed: () {
            setState(() {
              yaziGetir();
              todayDuration;


            });
            showDialog();
            timerSubscription.cancel();
            timerStream = null;
            timerSubscription = null;
            setState(() {
              hoursStr = '00';
              minutesStr = '00';
              secondsStr = '00';
            });
            timerSubscription.cancel();
          }, icon: Icon(Icons.save))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text(''),
            ),
            Divider(thickness: 1000),
            ListTile(
              title: Text('Welcome'),
            ),
            ListTile(
              title: Text('Plan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => plan()),
                );
              },
              leading: Icon(Icons.calendar_today_outlined),
            ),
            ListTile(
              title: Text('Exercises'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => exercise()),
                );
              },
              leading: Icon(Icons.list_alt_rounded),
            ),
            ListTile(
              title: Text('BMI'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profil()),
                );
              },
              leading: Icon(Icons.person),
            ),
            Divider(thickness: 12),
            ListTile(
              title: Text('Log out'),
              onTap: () {
                _authService.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              leading: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: [
          plan(),
          exercise(),
          profil(),
          chart(),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Plan',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: 'Exercises',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'BMI Calculation',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_chart),
                label: 'Chart',
                backgroundColor: Colors.blueAccent),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.greenAccent,
          onTap: onTapped),
    );
  }

  void showDialog() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Your exercise duration for today is $todayDuration"),
          content: Text("Nice job"),
          actions: [
            CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }

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
}