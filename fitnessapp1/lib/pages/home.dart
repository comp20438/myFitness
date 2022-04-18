import 'package:fitnessapp1/anaSayfalar/exercise.dart';
import 'package:fitnessapp1/anaSayfalar/plan.dart';
import 'package:fitnessapp1/anaSayfalar/profil.dart';
import 'package:fitnessapp1/pages/login.dart';
import 'package:fitnessapp1/service/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService _authService = AuthService();
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text(''),
            ),
            Divider(thickness: 1000),
            ListTile(
              title: Text('Hoşgeldiniz'),
            ),
            ListTile(
              title: Text('Planım'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => plan()),
                );
              },
              leading: Icon(Icons.calendar_today_outlined),
            ),

            ListTile(
              title: Text('Egzersizlerim'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => exercise()),
                );
              },
              leading: Icon(Icons.list_alt_rounded),
            ),
            ListTile(
              title: Text('Profilim'),
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
              title: Text('Çıkış yap'),
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Planım',
                backgroundColor: Colors.blueAccent),

            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: 'Egzersizlerim',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profil-BMI',
                backgroundColor: Colors.blueAccent),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.greenAccent,
          onTap: onTapped),
    );
  }
}
