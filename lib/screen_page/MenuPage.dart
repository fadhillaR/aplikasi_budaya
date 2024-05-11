import 'package:aplikasi_budaya/screen_page/LoginPage.dart';
import 'package:aplikasi_budaya/screen_page/RegisterPage.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 213, 97), // Warna utama di tengah
                  Color.fromARGB(
                      255, 255, 213, 97), // Warna transparan di pinggir
                  Color.fromARGB(
                      255, 255, 213, 97), // Warna transparan di pinggir
                  Color.fromARGB(255, 255, 213, 97), // Warna utama di tengah
                ],
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9
                ], // Menentukan ukuran masing-masing warna
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Image(
                      image: AssetImage(
                        'assets/bgboard.png',
                      ),
                      width: 280,
                      height: 200,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 265,
            left: 30,
            child: Text(
              'Selamat Datang...',
              style: TextStyle(
                  color: Color.fromARGB(255, 74, 48, 0),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans'),
            ),
          ),
          Positioned(
            top: 325,
            left: 30,
            child: Text(
              'Selain berbagai macam adat dan budaya,\nKamu juga dapat menjelajahi berbagai macam Sejarawan\nSilahkan Login terlebih dahulu...',
              style: TextStyle(
                color: Color.fromARGB(255, 74, 48, 0),
                fontSize: 16,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 425,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageLogin()));
                  },
                  child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 192, 178, 52),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.person,
                        //   color: Color.fromARGB(255, 74, 48, 0),
                        //   size: 20,
                        // ),
                        // SizedBox(width: 10),
                        Text(
                          'Log In',
                          style: TextStyle(
                            color: Color.fromARGB(255, 74, 48, 0),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageRegister()
                    ));
                  },
                  child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          // Color.fromARGB(255, 134, 169, 255),
                          // Color.fromARGB(255, 54, 111, 255),
                          // Color.fromARGB(255, 51, 109, 253),
                          Color.fromARGB(255, 192, 178, 52),
                          Color.fromARGB(255, 192, 178, 52),
                          Color.fromARGB(255, 192, 178, 52),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          color: Color.fromARGB(255, 74, 48, 0),
                          // color: Color(0xff333333),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
