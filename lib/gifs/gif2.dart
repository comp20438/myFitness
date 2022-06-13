import 'package:flutter/material.dart';

class gif2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lever Chest Press'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif2.gif"),
            ),
            Text('Lever Chest Press'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Grasp handles with wide overhand grip; elbows out to sides just below shoulders. Execution. Press lever until arms are extended. Return weight until chest muscles are slightly stretched. Repeat.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}
