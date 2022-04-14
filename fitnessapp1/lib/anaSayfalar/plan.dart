import 'package:flutter/material.dart';


class plan extends StatefulWidget {
  const plan({Key? key}) : super(key: key);

  @override
  State<plan> createState() => _planState();
}

class _planState extends State<plan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Center
        (
        child: Text("burda takvim var"),
      ),
    );
  }
}
