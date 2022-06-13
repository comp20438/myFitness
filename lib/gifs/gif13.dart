import 'package:flutter/material.dart';


class gif13 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif13> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Ball Sit up wall'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif13.gif"),
            ),
            Text('Medicine Ball Sit up wall'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Grinding out a few sets of wall ball exercises can boost your heart rate, improve cardiovascular fitness, and turn your body into a calorie-crushing machine. It can also strengthen most of the muscle groups in your body.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}