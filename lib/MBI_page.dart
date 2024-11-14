// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class MBI_page extends StatelessWidget {
  const MBI_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MBI Calculator Page",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: const Bmicalculator(),
    );
  }
}

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({Key? key}) : super(key: key);

  @override
  State<Bmicalculator> createState() => _Bmicalculator();
}

class _Bmicalculator extends State<Bmicalculator> {
  int currentindex = 0;
  String result = '';
  double tinggi = 0;
  double berat = 0;
  String weightStatus = '';

  TextEditingController tinggiController = TextEditingController();
  TextEditingController beratController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    radiobutton(
                        'Value',
                        const Color.fromARGB(255, 112, 203, 245),
                        0,
                        Icon(Icons.male)),
                    radiobutton('Value', Color.fromARGB(255, 255, 192, 203), 1,
                        Icon(Icons.female)),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  "Input Tinggi (cm) : ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: tinggiController,
                  decoration: InputDecoration(
                    hintText: "Tinggi (cm)",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 209, 209),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Input Berat Badan (KG) : ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: beratController,
                  decoration: InputDecoration(
                    hintText: "Berat Badan (KG)",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 209, 209),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color.fromARGB(255, 68, 131, 160)),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () {
                      setState(() {
                        tinggi = double.parse(tinggiController.value.text);
                        berat = double.parse(beratController.value.text);
                      });
                      calculateBmi(tinggi, berat);
                    },
                    child: Text(
                      "Calculate",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Hasil Dari BMI :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 72, 120, 120),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "BMI: $result",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 72, 120, 120),
                        ),
                      ),
                      Text(
                        "Weight Status: $weightStatus",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 72, 120, 120),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateBmi(double tinggi, double berat) {
    double hasilakhir = berat / (tinggi * tinggi / 10000);
    String bmi = hasilakhir.toStringAsFixed(2);
    setState(() {
      result = bmi;
      weightStatus = getWeightStatus(hasilakhir);
    });
  }

  String getWeightStatus(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal Weight";
    } else if (bmi >= 25.0 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radiobutton(String value, Color color, int index, Icon icon) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 80,
        child: TextButton(
          style: ElevatedButton.styleFrom(
            primary: currentindex == index
                ? color
                : const Color.fromARGB(255, 234, 239, 242),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: icon,
        ),
      ),
    );
  }
}
