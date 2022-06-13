import 'package:flutter/material.dart';


class gif6 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif6> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suspension Fly'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif6.gif"),
            ),
            Text('Suspension Fly'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Lean into the handles with your arms out in front of you, bracing your feet against a stable object if necessary. Your body should be straight, spine neutral, and your arms extended and palms facing each other. This will be your starting position.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}