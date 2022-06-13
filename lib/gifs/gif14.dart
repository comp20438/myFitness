import 'package:flutter/material.dart';


class gif14 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif14> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weighted Standing Twist'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif14.gif"),
            ),
            Text('Weighted Standing Twist'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(' Stand with your knees slightly soft, holding a dumbbell at chest level. Keep your pelvis stable as you rotate your rib cage right and left, to complete one rep. Be sure to keep your abs pulled toward your spine as you twist from side to side. ',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}