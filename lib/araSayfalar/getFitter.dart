
import 'package:fitnessapp1/gifs/gif10.dart';
import 'package:fitnessapp1/gifs/gif6.dart';
import 'package:fitnessapp1/gifs/gif7.dart';
import 'package:fitnessapp1/gifs/gif8.dart';
import 'package:fitnessapp1/gifs/gif9.dart';
import 'package:flutter/material.dart';




class getFitter extends StatefulWidget {
  const getFitter({Key? key}) : super(key: key);


  @override
  State<getFitter> createState() => _getFitterState();
}

class _getFitterState extends State<getFitter> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise List - Get Fitter'),

      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('First exercise'),
            subtitle: Text('Suspension Fly'),
            trailing: Wrap(
              spacing: 20,
              children:[
                GestureDetector(
                  onTap: () {
                    setState(() => _isPressed1 = !_isPressed1);
                  },
                  child: Icon(Icons.thumb_up,
                      color: (_isPressed1)
                          ? Colors.red
                          : Colors.black12,
                      size: 40.0),

                ),


              ],
            ),


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gif6(),
                ),
              );
            },
          ),


          ListTile(
            title: Text('Second exercise'),
            subtitle: Text('Dumbbell Alternate Side Press'),
            trailing: Wrap(
              spacing: 20,
              children:[
                GestureDetector(
                  onTap: () {
                    setState(() => _isPressed2 = !_isPressed2);
                  },
                  child: Icon(Icons.thumb_up,
                      color: (_isPressed2)
                          ? Colors.red
                          : Colors.black12,
                      size: 40.0),

                ),


              ],
            ),


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gif7(),
                ),
              );
            },
          ),

          ListTile(
            title: Text('Third exercise'),
            subtitle: Text('Twist on stability ball arms straight'),
            trailing: Wrap(
              spacing: 20,
              children:[
                GestureDetector(
                  onTap: () {
                    setState(() => _isPressed3 = !_isPressed3);
                  },
                  child: Icon(Icons.thumb_up,
                      color: (_isPressed3)
                          ? Colors.red
                          : Colors.black12,
                      size: 40.0),

                ),


              ],
            ),


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gif8(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fourth exercise'),
            subtitle: Text('Cable seated row'),
            trailing: Wrap(
              spacing: 20,
              children:[
                GestureDetector(
                  onTap: () {
                    setState(() => _isPressed4 = !_isPressed4);
                  },
                  child: Icon(Icons.thumb_up,
                      color: (_isPressed4)
                          ? Colors.red
                          : Colors.black12,
                      size: 40.0),

                ),


              ],
            ),


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gif9(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fifth exercise'),
            subtitle: Text('Lever High Row plate loaded'),
            trailing: Wrap(
              spacing: 20,
              children:[
                GestureDetector(
                  onTap: () {
                    setState(() => _isPressed5 = !_isPressed5);
                  },
                  child: Icon(Icons.thumb_up,
                      color: (_isPressed5)
                          ? Colors.red
                          : Colors.black12,
                      size: 40.0),

                ),


              ],
            ),


            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gif10(),
                ),
              );
            },
          ),



        ],
      ),
    );
  }
}

