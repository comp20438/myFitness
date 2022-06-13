import 'package:flutter/material.dart';

class gif1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dumbbell Alternate Biceps Curl'),
      ),
      body: Center(

          child: Column(children: <Widget>[

            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif1.gif"),
            ),
            Text('Dumbbell Alternate Biceps Curl'),
            Divider(),
             Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Alternating bicep curls, and doing them one at a time, allow for greater attention and range of motion to more effectively target the biceps of each arm. However, in a well-rounded bicep program, you should incorporate bicep exercises that use both biceps together, as well as one at a time.',
                    style: TextStyle(fontSize: 16))),

          ])),
    );
  }
}
