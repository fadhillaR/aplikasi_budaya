import 'dart:async';

import 'package:aplikasi_budaya/screen_page/BoardingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Navigasi setelah 2 detik
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BoardPage()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffffd561),
        child: Center(
          child: Image.asset('image/bgboard.png'),
        ),
      ),
    );
  }
}