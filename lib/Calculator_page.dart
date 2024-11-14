// ignore_for_file: use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/MBI_page.dart';


class Calculator_page extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<Calculator_page> {
  double angkapertama = 0;
  double angkakedua = 0;
  String operation = "";
  double result = 0.0;
  TextEditingController hasil = TextEditingController();


  void calculate() {
    switch (operation) {
      case "+":
        result = angkapertama + angkakedua;
        break;
      case "-":
        result = angkapertama - angkakedua;
        break;
      case "*":
        result = angkapertama * angkakedua;
        break;
      case "/":
        if (angkakedua != 0) {
          result = angkapertama / angkakedua;
        } else {
          result = double.infinity;
        }
        break;
    }
        setState(() {
      hasil.text = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator Page",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: const Color.fromARGB(255, 72, 120, 120)
               
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angkapertama = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(labelText: 'Angka Pertama'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angkakedua = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(labelText: 'Angka Kedua'),
            ),
             TextField(
            controller: hasil,
            readOnly: true,
            decoration: InputDecoration(labelText: 'Hasil'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    operation = "+";
                    calculate();
                    
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    operation = "-";
                    calculate();
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    operation = "*";
                    calculate();
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () {
                    operation = "/";
                    calculate();
                  },
                  child: Text('/'),
                ),
              ],
            ),
            
          ],
        ),
      ),
        floatingActionButton: ElevatedButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MBI_page();
            }),
          );
        },
      ),
    );
  }
}
