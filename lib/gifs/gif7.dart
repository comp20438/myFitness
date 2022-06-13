import 'package:flutter/material.dart';


class gif7 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif7> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dumbbell Alternate Side Press'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif7.gif"),
            ),
            Text('Dumbbell Alternate Side Press'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Hold a dumbbell in each hand just above shoulder height with your palms facing forward and arms bent. Press one dumbbell up over your head without moving the other dumbbell. Stay tall with your chest up and shoulders back. Return to starting position to perform on the other side.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}