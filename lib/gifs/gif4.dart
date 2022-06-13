import 'package:flutter/material.dart';


class gif4 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crunch leg raise'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif4.gif"),
            ),
            Text('Crunch leg raise'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Begin by slowly curling your upper body, lifting your shoulder blades off of the floor. Exhale on the upward motion.',
                    style: TextStyle(fontSize: 16))),

          ])),
    );
  }
}