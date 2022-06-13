import 'package:flutter/material.dart';


class gif8 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif8> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twist on stability ball arms straight'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif8.gif"),
            ),
            Text('Twist on stability ball arms straight'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Stability ball exercises activate the core muscles, increase body awareness, and improve coordination. They also provide an effective way to build muscle, improve endurance, and increase flexibility.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}