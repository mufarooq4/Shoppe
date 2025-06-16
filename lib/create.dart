import 'package:flutter/material.dart';
import 'package:shoppe/main.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'assets/Bubbles.png',
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              right: 0,
                              left: 20,
                              bottom: 0,
                            ),
                            child: Text(
                              'Create ',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              right: 0,
                              left: 20,
                              bottom: 0,
                            ),
                            child: Text(
                              'Account ',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset('assets/UploadPhoto.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Password',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Your number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(255, 50, 26, 200),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Done',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text('Cancel'),
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
