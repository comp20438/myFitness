import 'package:flutter/material.dart';


class gif5 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif5> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Middle Back Stretch'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif5.gif"),
            ),
            Text('Middle Back Stretch'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Inhale, sit up tall, and place your right hand behind you, bringing your left hand to your right knee. Exhale and gently twist your heart to the right. Lengthen through the spine, feeling the twist wring out tension in the middle of your back',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}