import 'package:flutter/material.dart';

class gif3 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sled Backward Angled Calf Raise'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif3.gif"),
            ),

            Text('Sled Backward Angled Calf Raise'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Sit on seat and place feet very high on platform. Grasp handles to sides and extend knees. Pull forefoot back toward body as far as possible while pushing platform with heels. Return feet down to platform and repeat.',
                    style: TextStyle(fontSize: 16))),

          ])),
    );
  }
}
