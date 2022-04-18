import 'package:flutter/material.dart';

class subexercise_page extends StatefulWidget {
  const subexercise_page({Key? key}) : super(key: key);

  @override
  State<subexercise_page> createState() => _subexercise_pageState();
}

class _subexercise_pageState extends State<subexercise_page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text("Subexercises"),
      ),
    );
  }
}
