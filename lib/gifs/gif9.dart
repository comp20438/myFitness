import 'package:flutter/material.dart';


class gif9 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<gif9> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cable seated row'),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Divider(),
            Container(
              child: Image.asset("asset/gifs/gif9.gif"),
            ),
            Text('Cable seated row'),
            Divider(),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('During the seated row, the primary movers are the lats and rhomboids. The trapezius and biceps help the movement by assisting the lats and rhomboids.',
                    style: TextStyle(fontSize: 16))),
          ])),
    );
  }
}