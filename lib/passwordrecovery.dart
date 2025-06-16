import 'package:flutter/material.dart';

// ignore: camel_case_types
class passwordrecovery extends StatelessWidget {
  const passwordrecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/topbubble.png',
              width: double.infinity,
              alignment: Alignment.topRight,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/circle.png'),
                      Image.asset('assets/face2.png', scale: 1.5),
                    ],
                  ),
                  Text(
                    'Password Recovery',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'How would you like to restore',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('your password?', style: TextStyle(fontSize: 20)),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(18),
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
