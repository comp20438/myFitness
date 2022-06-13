import 'dart:math';

import 'package:fitnessapp1/anaSayfalar/subexercise_page.dart';
import 'package:fitnessapp1/gifs/gif1.dart';
import 'package:flutter/material.dart';



class exercisePage extends StatefulWidget {
  @override
  _exercisePageState createState() => _exercisePageState();
}

class _exercisePageState extends State<exercisePage> {
  @override
  Widget build(BuildContext context) {
    //String selectedImg;
    String selectTitle;
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    //selectedImg = arguments['image'];
    selectTitle = arguments['title'];
    return Scaffold(
      backgroundColor: Color(0xff8ebfbb),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Column(


            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            '$selectTitle',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(

                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'List of all exercises',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),


                                  Image.asset("asset/gifs/gif12.gif"), Divider(),
                                  Image.asset("asset/gifs/gif11.gif"),Divider(),
                                  Image.asset("asset/gifs/gif13.gif"),Divider(),
                                  Image.asset("asset/gifs/gif1.gif"),Divider(),
                                  Image.asset("asset/gifs/gif2.gif"),Divider(),
                                  Image.asset("asset/gifs/gif5.gif"),Divider(),
                                  Image.asset("asset/gifs/gif3.gif"),Divider(),
                                  Image.asset("asset/gifs/gif7.gif"),Divider(),
                                  Image.asset("asset/gifs/gif4.gif"),Divider(),
                                  Image.asset("asset/gifs/gif6.gif"),Divider(),
                                  Image.asset("asset/gifs/gif8.gif"),Divider(),
                                  Image.asset("asset/gifs/gif9.gif"),Divider(),
                                  Image.asset("asset/gifs/gif14.gif"),Divider(),
                                  Image.asset("asset/gifs/gif10.gif"),Divider(),
                                  Image.asset("asset/gifs/gif15.gif"),Divider(),




                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],



          )
        ],
      ),
    );
  }
}
