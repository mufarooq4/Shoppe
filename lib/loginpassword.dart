import 'package:flutter/material.dart';
import 'package:shoppe/login.dart';
import 'package:shoppe/passwordrecovery.dart';

class Loginpassword extends StatelessWidget {
  const Loginpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/bubble.png'),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/circle.png'),
                          Image.asset('assets/face2.png', scale: 1.5),
                        ],
                      ),
                      Text(
                        'Hello, Romania!!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => passwordrecovery(),
                            ),
                          );
                        },
                        child: Text('Forgot your password?'),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                  );
                },
                child: Image.asset('assets/notyou.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
