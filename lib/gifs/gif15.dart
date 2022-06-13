import 'package:flutter/material.dart';


class gif15 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif15> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dumbbell Standing Triceps Extension'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif15.gif"),
            ),
            Text('Dumbbell Standing Triceps Extension'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(' Stand tall and hold a dumbbell with both hands directly above your head. Slowly flex your elbows and lower the weight behind your head as you keep your upper arms still. Extend your arms and repeat. ',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}