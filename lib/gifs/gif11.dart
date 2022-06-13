import 'package:flutter/material.dart';


class gif11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif11> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dumbbell Bench Squat'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif11.gif"),
            ),
            Text('Dumbbell Bench Squat'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(' Are squats with dumbbells effective? Dumbbell squats strengthen your lower body and core. The additional weight from a pair of dumbbells increases activation in your posterior chain muscles, like the hamstrings and gluteus maximus. Dumbbell squats also activate the stabilizing muscles around your knees and ankles. ',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}