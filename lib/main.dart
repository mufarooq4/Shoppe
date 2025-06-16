import 'package:flutter/material.dart';
import 'create.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoppe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/circle.png'),
                  Image.asset('assets/bag.png'),
                ],
              ),
              const Text(
                'Shoppe',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Beautiful eCommerce app ',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'for your online store',
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Create()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 120,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 500,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 50, 26, 200),
                    ),
                    child: Text(
                      'let\'s get started',
                      style: TextStyle(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 247, 247, 247),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                  );
                },
                child: Image.asset('assets/arrow.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
