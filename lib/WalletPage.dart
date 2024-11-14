// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalletPage extends StatelessWidget {
  final double balance;

  WalletPage({required this.balance});

  @override
  Widget build(BuildContext context) {
    String formattedBalance = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(balance);

    return Scaffold(
      appBar: AppBar(title: const Text("Wallet Page",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Color.fromARGB(255, 72, 120, 120),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
  width: 300,
  height: 100, // Sesuaikan tinggi kontainer
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      colors: [Color.fromARGB(255, 132, 142, 159), Color.fromARGB(204, 10, 200, 184)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Saldo Anda",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      Text(
        formattedBalance,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }
}
