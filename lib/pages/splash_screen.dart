import 'dart:async';

import 'package:ecom/const/const.dart';
import 'package:ecom/pages/logine_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(181, 240, 33, 15),
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: context.screenWidth,
              margin: const EdgeInsets.symmetric(horizontal: 200, vertical: 100),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              alignment: Alignment.center,
              child: Image.asset('assets/icons/app_logo.png', height: 150, width: 150, fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 11,
            ),
            const Text(
              'E-Com',
              style: TextStyle(fontSize: 15, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.white),
            ),
            TextButton(onPressed: () {}, child: const Text('Version_ _ 0.00.1', style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
