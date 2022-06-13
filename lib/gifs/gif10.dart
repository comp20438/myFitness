import 'package:flutter/material.dart';


class gif10 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif10> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lever High Row plate loaded'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif10.gif"),
            ),
            Text('Lever High Row plate loaded'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Sit on seat and position chest against pad. Grasp lever handles with overhand grip. Pull lever back until elbows are behind back and shoulders are pulled back. Return until arms are extended and shoulders are stretched forward.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}