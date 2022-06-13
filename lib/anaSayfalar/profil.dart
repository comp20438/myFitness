import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();


  double _result = 0.00;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in cm',
                counterText: "required",
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg',
                counterText: "required",
                icon: Icon(Icons.line_weight),
              ),
            ),

            SizedBox(height: 10),
            RaisedButton(
              color: Colors.blue,
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (checkTextFieldEmptyOrNot()) {
                  showDialog();
                }

                setState(() {
                  color_variable();
                  calculateBMI();
                });
              },
            ),

            SizedBox(height: 10),
            Text(
              "${_result.toStringAsFixed(3)}",
              style: TextStyle(
                color: color_variable(),
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
                "https://i.insider.com/57d291cadd0895c6308b46b0?width=800&format=jpeg&auto=webp"),
            SizedBox(height: 2),
          ],
        ),
      ),
    );
  }


  void calculateBMI() {
    double height = double.parse(heightController.text) / 100.00;
    double weight = double.parse(weightController.text);

    double heightSquare = height * height;
    double result = weight  / heightSquare;

    _result = result;

    setState(() {});
  }

  void showDialog() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("Please fill required fields"),
          content: Text("Fill weight and height variables"),
          actions: [
            CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  checkTextFieldEmptyOrNot() {
    bool bb = false;
    // Creating 3 String Variables.
    String text1, text2;

    // Getting Value From Text Field and Store into String Variable
    text1 = weightController.text;
    text2 = heightController.text;

    // Checking all TextFields.
    if (text1 == '' || text2 == '') {
      // Put your code here which you want to execute when Text Field is Empty.
      print('Text Field is empty, Please Fill All Data');
      bb = true;
    } else {
      // Put your code here, which you want to execute when Text Field is NOT Empty.
      print('Not Empty, All Text Input is Filled.');
    }
    return bb;
  }

  color_variable() {
    var my_color_variable = Colors.red;

    if (_result >= 12 && _result <= 18) {
      my_color_variable = Colors.blue;
    } else if ((_result >= 19 && _result <= 24)) {
      my_color_variable = Colors.green;
    } else if ((_result >= 24 && _result <= 29)) {
      my_color_variable = Colors.yellow;
    }
    else if ((_result >= 29 && _result <= 39)) {
      my_color_variable = Colors.orange;
    } else if ((_result >= 39)) {
      my_color_variable = Colors.red;
    }

    return my_color_variable;
  }



}
