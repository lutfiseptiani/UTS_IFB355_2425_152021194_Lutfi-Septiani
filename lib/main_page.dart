// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, unnecessary_import, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pem_mobile/MBI_page.dart';
import 'package:flutter_pem_mobile/TopUpPage.dart';
import 'package:flutter_pem_mobile/profil.dart';
import 'package:flutter_pem_mobile/song_page.dart';
import 'package:flutter_pem_mobile/Calculator_page.dart';
import 'package:flutter_pem_mobile/Todo_page.dart';
import 'package:flutter_pem_mobile/WalletPage.dart';
import 'package:flutter_pem_mobile/login_page.dart';
import 'package:flutter_pem_mobile/main.dart';

class main_page extends StatelessWidget {
  const main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Main Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 120, 120),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double walletBalance = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(102, 13, 240, 244),
                      Color.fromARGB(153, 13, 244, 213),
                      Color.fromARGB(204, 10, 200, 184),
                      Color.fromARGB(255, 19, 178, 159),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: ListView(
                  children: <Widget>[
                    // First Row
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.person),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return const profil_page();
                                    }),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(  
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.calculate),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Calculator_page();
                                    }),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.music_note),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return song_page();
                                  }));
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.task),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Todo_page();
                                  }));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.attach_money),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TopUpPage();
                                  })).then((addedBalance) {
                                    if (addedBalance != null) {
                                      walletBalance += addedBalance;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.account_balance_wallet),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return WalletPage(balance: walletBalance);
                                  }));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.accessibility_new),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MBI_page();
                                  }));
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 9, 125, 125),
                                    Color(0xFF53D2DC)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                child: Icon(Icons.logout),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Log Out"),
                                        content:
                                            Text("Anda yakin ingin keluar?"),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text("Batal"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                            child: Text("Log Out"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return MyApp();
                                              }));
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
