import 'package:fitnessapp1/gifs/gif1.dart';
import 'package:fitnessapp1/gifs/gif2.dart';
import 'package:fitnessapp1/gifs/gif3.dart';
import 'package:fitnessapp1/gifs/gif4.dart';
import 'package:fitnessapp1/gifs/gif5.dart';
import 'package:flutter/material.dart';




class gainMuscle extends StatefulWidget {
  const gainMuscle({Key? key}) : super(key: key);


  @override
  State<gainMuscle> createState() => _gainMuscleState();
}

class _gainMuscleState extends State<gainMuscle> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise List - Gain Muscle'),

      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('First exercise'),
            subtitle: Text('Dumbbell Alternate Biceps Curl'),
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
                  builder: (context) => gif1(),
                ),
              );
            },
          ),


          ListTile(
            title: Text('Second exercise'),
            subtitle: Text('Lever Chest Press'),
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
                  builder: (context) => gif2(),
                ),
              );
            },
          ),

          ListTile(
            title: Text('Third exercise'),
            subtitle: Text('Sled Backward Angled Calf Raise'),
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
                  builder: (context) => gif3(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fourth exercise'),
            subtitle: Text('Crunch leg raise'),
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
                  builder: (context) => gif4(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fifth exercise'),
            subtitle: Text('Middle Back Stretch'),
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
                  builder: (context) => gif5(),
                ),
              );
            },
          ),



        ],
      ),
    );
  }
}

