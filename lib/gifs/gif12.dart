import 'package:flutter/material.dart';


class gif12 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif12> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dumbbell Lying Hammer Press'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif12.gif"),
            ),
            Text('Dumbbell Lying Hammer Press'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('The chest press targets your pectorals, deltoids, and triceps, building muscle tissue and strength. It also works your serratus anterior and biceps.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}