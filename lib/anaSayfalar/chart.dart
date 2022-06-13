import 'dart:async';
import 'dart:math';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';

import '../service/status_service.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class chart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chart Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark,
      ),
      home: ChartSampleGallery(),
    );
  }
}

class ChartSampleGallery extends StatefulWidget {
  @override
  _ChartSampleGalleryState createState() => _ChartSampleGalleryState();
}

class _ChartSampleGalleryState extends State<ChartSampleGallery> {
  late TooltipBehavior _tooltipBehavior;




  TextEditingController datas = TextEditingController();

  @override
  int i = 0;
  addData() {
    i = i + 1;
    String a = i.toString();
    FirebaseFirestore.instance
        .collection("Status")
        .doc(a)
        .set({'status': datas.text});
  }

  yaziGetir(String ttt) {
    String gelenYaziBasligi = "5";
    FirebaseFirestore.instance
        .collection("Status")
        .doc(ttt)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi = gelenVeri.data()!['status'];
      });
    });
    int k = int.parse(gelenYaziBasligi);
    return k;
  }

  String gelenYaziBasligi1 = "0";
  yaziGetir1() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("1")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi1 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi2 = "0";
  yaziGetir2() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("2")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi2 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi3 = "0";
  yaziGetir3() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("3")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi3 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi4 = "0";
  yaziGetir4() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("4")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi4 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi5 = "0";
  yaziGetir5() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("5")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi5 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi6 = "0";
  yaziGetir6() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("6")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi6 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi7 = "0";
  yaziGetir7() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("7")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi7 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi8 = "0";
  yaziGetir8() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("8")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi8 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi9 = "0";
  yaziGetir9() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("9")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi9 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi10 = "0";
  yaziGetir10() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("10")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi10 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi11 = "0";
  yaziGetir11() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("11")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi11 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi12 = "0";
  yaziGetir12() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("12")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi12 = gelenVeri.data()!['status'];
      });
    });
  }

  String gelenYaziBasligi13 = "0";
  yaziGetir13() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("13")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi13 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi14 = "0";
  yaziGetir14() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("14")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi14 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi15 = "0";
  yaziGetir15() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("15")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi15 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi16 = "0";
  yaziGetir16() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("16")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi16 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi17 = "0";
  yaziGetir17() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("17")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi17 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi18 = "0";
  yaziGetir18() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("18")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi18 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi19 = "0";
  yaziGetir19() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("19")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi19 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi20 = "0";
  yaziGetir20() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("20")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi20 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi21 = "0";
  yaziGetir21() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("21")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi21 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi22 = "0";
  yaziGetir22() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("22")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi22 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi23 = "0";
  yaziGetir23() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("23")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi23 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi24 = "0";
  yaziGetir24() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("24")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi24 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi25 = "0";
  yaziGetir25() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("25")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi25 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi26 = "0";
  yaziGetir26() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("26")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi26 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi27 = "0";
  yaziGetir27() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("27")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi27 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi28 = "0";
  yaziGetir28() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("28")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi28 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi29 = "0";
  yaziGetir29() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("29")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi29 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi30 = "0";
  yaziGetir30() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("30")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi30 = gelenVeri.data()!['status'];
      });
    });
  }
  String gelenYaziBasligi31 = "0";
  yaziGetir31() {
    FirebaseFirestore.instance
        .collection("Status")
        .doc("31")
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi31 = gelenVeri.data()!['status'];
      });
    });
  }



  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    yaziGetir1();
    var k1 = int.parse(gelenYaziBasligi1);

    yaziGetir2();
    var k2 = int.parse(gelenYaziBasligi2);

    yaziGetir3();
    var k3 = int.parse(gelenYaziBasligi3);

    yaziGetir4();
    var k4 = int.parse(gelenYaziBasligi4);

    yaziGetir5();
    var k5 = int.parse(gelenYaziBasligi5);

    yaziGetir6();
    var k6 = int.parse(gelenYaziBasligi6);

    yaziGetir7();
    var k7 = int.parse(gelenYaziBasligi7);

    yaziGetir8();
    var k8 = int.parse(gelenYaziBasligi8);

    yaziGetir9();
    var k9= int.parse(gelenYaziBasligi9);

    yaziGetir10();
    var k10 = int.parse(gelenYaziBasligi10);

    yaziGetir11();
    var k11 = int.parse(gelenYaziBasligi11);

    yaziGetir12();
    var k12 = int.parse(gelenYaziBasligi12);

    yaziGetir13();
    var k13 = int.parse(gelenYaziBasligi13);

    yaziGetir14();
    var k14 = int.parse(gelenYaziBasligi14);

    yaziGetir15();
    var k15 = int.parse(gelenYaziBasligi15);

    yaziGetir16();
    var k16 = int.parse(gelenYaziBasligi16);

    yaziGetir17();
    var k17 = int.parse(gelenYaziBasligi17);

    yaziGetir18();
    var k18 = int.parse(gelenYaziBasligi18);

    yaziGetir19();
    var k19 = int.parse(gelenYaziBasligi19);

    yaziGetir20();
    var k20 = int.parse(gelenYaziBasligi20);

    yaziGetir21();
    var k21 = int.parse(gelenYaziBasligi21);

    yaziGetir22();
    var k22 = int.parse(gelenYaziBasligi22);

    yaziGetir23;
    var k23 = int.parse(gelenYaziBasligi23);

    yaziGetir24();
    var k24 = int.parse(gelenYaziBasligi24);

    yaziGetir25();
    var k25 = int.parse(gelenYaziBasligi25);

    yaziGetir26();
    var k26 = int.parse(gelenYaziBasligi26);

    yaziGetir27();
    var k27 = int.parse(gelenYaziBasligi27);

    yaziGetir28();
    var k28 = int.parse(gelenYaziBasligi28);

    yaziGetir29();
    var k29 = int.parse(gelenYaziBasligi29);

    yaziGetir30();
    var k30 = int.parse(gelenYaziBasligi30);

    yaziGetir31();
    var k31 = int.parse(gelenYaziBasligi31);


    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM').format(now);

    return Scaffold(

        body: ListView(
          children: [
            Divider(),
            SfCartesianChart(
                primaryXAxis: CategoryAxis(
                    labelIntersectAction: AxisLabelIntersectAction.multipleRows,

                ),
                // Chart title
                title: ChartTitle(text: 'Chart of weights in $formattedDate'),
                // Enable legend
                legend: Legend(isVisible: false),
                // Enable tooltip
                //tooltipBehavior: _tooltipBehavior,
                series: <ScatterSeries<ChartData, String>>[
                  ScatterSeries<ChartData, String>(
                      dataSource: <ChartData>[
                        ChartData("1", k1),
                        ChartData("2", k2),
                        ChartData("3", k3),
                        ChartData("4", k4),
                        ChartData("5", k5),
                        ChartData("6", k6),
                        ChartData("7", k7),
                        ChartData("8", k8),
                        ChartData("9", k9),
                        ChartData("10",k10),
                        ChartData("11", k11),
                        ChartData("12", k12),
                        ChartData("13", k13),
                        ChartData("14", k14),
                        ChartData("15", k15),
                        ChartData("16", k16),
                        ChartData("17", k17),
                        ChartData("18", k18),
                        ChartData("19", k19),

                        ChartData("20",k20),
                        ChartData("21", k21),
                        ChartData("22", k22),
                        ChartData("23", k23),
                        ChartData("24", k24),
                        ChartData("25", k25),
                        ChartData("26", k26),
                        ChartData("27", k27),
                        ChartData("28", k28),
                        ChartData("29", k29),
                        ChartData("30", k30),
                        ChartData("31", k31),



                      ],
                      xValueMapper: (ChartData sales, _) => sales.year,
                      yValueMapper: (ChartData sales, _) => sales.sales,
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true,
                      showZeroValue: false,
                      )

                  )
                ]

            ),
            Divider(color: Color.alphaBlend(Colors.blue, Colors.red)),
            TextField(
              controller: datas,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight',
                icon: Icon(Icons.add_chart),
              ),
            ),
            Divider(
                thickness: 10, color: Color.alphaBlend(Colors.white, Colors.red)),
            Divider(color: Color.alphaBlend(Colors.lightBlueAccent, Colors.red)),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                addData();
                dateString();

              },
            ),

          ],

        )




    );
  }




}

class ChartData {
  ChartData(this.year, this.sales);

  final String year;
  final int sales;
}

 String dateString(){
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  return formattedDate;
}