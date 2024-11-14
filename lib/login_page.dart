// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use, unnecessary_import, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pem_mobile/main_page.dart';
import 'package:flutter_pem_mobile/register_page.dart';
import 'package:flutter_pem_mobile/NavigationPage.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Login Page",
              style:
                  TextStyle(color: Color.fromARGB(255, 233, 228, 228), fontWeight: FontWeight.w800)),
          backgroundColor: Color.fromARGB(255, 72, 120, 120)),
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
  bool isRememberme = false;

  Widget buildname() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Username',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: nameController,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person_rounded,
                  color: Color.fromARGB(255, 59, 119, 119),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildpass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: passwordController,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 59, 119, 119),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildremember() {
    return Container(
        height: 20,
        child: Row(
          children: <Widget>[
            Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: isRememberme,
                  checkColor: const Color.fromARGB(255, 59, 119, 119),
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      isRememberme = value!;
                    });
                  },
                )),
            Text(
              'Remember me',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }

  Widget buildloginbtn() {
    return Container(
       height: 45, 
            width: 160, 
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 59, 119, 119), const Color.fromARGB(255, 226, 222, 222)], 
                begin: Alignment.centerLeft, 
                end: Alignment.centerRight, 
              ),
              borderRadius: BorderRadius.circular(10.0), 
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0), 
              ),
              onPressed: () {
             
                  if (nameController.text == "Lutfi Septiani" && passwordController.text == "1104") {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return NavigationPage();
                    }));
                  } else {
                    nameController.text = "";
                    passwordController.text = "";
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Login Failed"),
                          content: Text("Username or password is incorrect."),
                          actions: <Widget>[
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              child: Text(
                'Login',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 16), // Warna teks
              ),
            ),
          );
  }

   Widget buildregister() {
    return Container(
       height: 45, 
            width: 160, 
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 59, 119, 119), const Color.fromARGB(255, 226, 222, 222)], 
                begin: Alignment.centerLeft, 
                end: Alignment.centerRight, 
              ),
              borderRadius: BorderRadius.circular(10.0), 
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0), 
              ),
             onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return register_page();
                          }));
                        },
              child: Text(
                'Register',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 16), // Warna teks
              ),
            ),
          );
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      buildname(),
                      SizedBox(height: 20),
                      buildpass(),
                      SizedBox(height: 20),
                      buildremember(),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: buildloginbtn(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: buildregister(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
