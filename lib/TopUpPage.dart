// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/WalletPage.dart';

class TopUpPage extends StatefulWidget {
  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  TextEditingController _controller = TextEditingController();

  void _updateBalance(double balance, Function(double) callback) {
    setState(() {
      double addedBalance = double.parse(_controller.text);
      balance += addedBalance;
      _controller.clear();
      callback(balance);
      Navigator.pop(context, addedBalance);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TopUp Page",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: const Color.fromARGB(255, 72, 120, 120)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Atur jarak tepi kiri dan kanan
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Jumlah Uang', // Tambahkan label
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _updateBalance(0, (balance) {});
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 72, 120, 120), 
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Sesuaikan padding
              ),
              child: Text(
                "Top Up",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
