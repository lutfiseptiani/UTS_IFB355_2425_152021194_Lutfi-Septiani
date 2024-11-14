// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class profil_page extends StatelessWidget {
  const profil_page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profil Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 120, 120),
      ),
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int friend = 5;

  List<String> images = [
    'https://images.pexels.com/photos/2380794/pexels-photo-2380794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3826501/pexels-photo-3826501.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/2743754/pexels-photo-2743754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/2709388/pexels-photo-2709388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3586798/pexels-photo-3586798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  List<String> names = [
    'Bambang',
    'James',
    'Udin',
    'Amel',
    'Zahra',
  ];

  String name = 'LutfiSeptiani';
  String phoneNumber = '+6282021194';
  String email = 'inilutfi@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: <Widget>[
        SizedBox(height: 30),
        Center(
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.network(
                'https://images.pexels.com/photos/1161668/pexels-photo-1161668.jpeg',
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Username:"),
                    ),
                    subtitle: Text(
                      name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("No HP:"),
                    ),
                    subtitle: Text(
                      phoneNumber,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Email:"),
                    ),
                    subtitle: Text(
                      email,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Friend List ($friend)",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: friend,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: Image.network(
                                images[index],
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
