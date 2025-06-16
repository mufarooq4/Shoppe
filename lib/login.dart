import 'package:flutter/material.dart';
import 'package:shoppe/loginpassword.dart';

// ignore: camel_case_types
class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Back')),
        body: Stack(
          children: [
            Image.asset(
              'assets/bubble.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'Good to see you back! ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Image.asset('assets/heart.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          prefix: Icon(Icons.email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginpassword(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 50, 26, 200),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginpassword(),
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginpassword(),
                            ),
                          );
                        },
                        child: Center(child: Text('Cancel')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
