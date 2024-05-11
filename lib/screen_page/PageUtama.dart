import 'package:aplikasi_budaya/galeri/GaleriPage.dart';
import 'package:aplikasi_budaya/screen_page/LoginPage.dart';
import 'package:aplikasi_budaya/screen_page/ProfilPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageMulai extends StatefulWidget {
  const PageMulai({super.key});

  @override
  State<PageMulai> createState() => _PageMulaiState();
}

class _PageMulaiState extends State<PageMulai> with TickerProviderStateMixin {
  String? userName;
  String? userFull;
  String? userEmail;

  Future<bool> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLoggedIn = prefs.getBool('isLoggedIn');
    return isLoggedIn ?? false;
  }

  Future<void> _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    await prefs.clear();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PageLogin()),
    );
  }

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  Future<void> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('username') ?? '';
      userFull = prefs.getString('fullname') ?? '';
      userEmail = prefs.getString('email');
    });
  }

  String capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide the back button
        toolbarHeight: 0, //app bar height
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //card
                  Positioned(
                    top: 50,
                    right: 25,
                    left: 25,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 202,
                                  58), // Warna transparan di pinggir
                              Color.fromARGB(
                                  255, 255, 213, 97), // Warna utama di tengah
                              Color.fromARGB(
                                  255, 255, 213, 97), // Warna utama di tengah
                              Color.fromARGB(255, 255, 202,
                                  58), // Warna transparan di pinggir
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
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                left: 20,
                                child: Text(
                                  userFull != null ? 'Welcome, $userFull' : '',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 74, 48, 0),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Open Sans'),
                                )),
                            Positioned(
                              top: 18,
                              right: 10,
                              child: IconButton(
                                icon: Icon(
                                  Icons.exit_to_app,
                                  color: Color.fromARGB(255, 74, 48, 0),
                                  size: 24,
                                ),
                                onPressed: () async {
                                  await _logout(context);
                                },
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 20,
                                child: Text(
                                  userEmail ?? '',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 74, 48, 0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Positioned(
                              top: 115,
                              // width: 415,
                              right: 20,
                              left: 20,
                              // left:
                              //     MediaQuery.of(context).size.width / 7.6 - 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageProfil(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Info Profile',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 74, 48, 0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //rekomendasi
                  Positioned(
                    top: 270,
                    left: 20,
                    child: Row(
                      children: [
                        Text(
                          '| ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Menyediakan Informasi',
                          style: TextStyle(
                              fontFamily: ('Open Sans'),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  //menu items
                  Positioned(
                    top: 300,
                    left: 20,
                    // left: MediaQuery.of(context).size.width / 5 - 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 192, 178, 52)
                                      .withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/upacara.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(height: 0),
                                  Text(
                                    'Upacara Adat',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // Text(
                                  //   'More Info',
                                  //   style: TextStyle(
                                  //     fontSize: 12,
                                  //     color: Color.fromARGB(255, 192, 178, 52),
                                  //     fontFamily: 'Open Sans',
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 192, 178, 52)
                                      .withOpacity(0.2), // Warna bayangan
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Aksi ketika tombol ditekan
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Image.asset(
                                    'assets/tari.png',
                                    width: 100,
                                    height: 90,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Tarian Adat',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // Text(
                                  //   'More Info',
                                  //   style: TextStyle(
                                  //     fontSize: 12,
                                  //     color: Color.fromARGB(255, 192, 178, 52),
                                  //     fontFamily: 'Open Sans',
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 192, 178, 52)
                                      .withOpacity(0.2), // Warna bayangan
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           PageKursus()),
                                // );
                              },
                              child: Column(
                                children: [
                                  SizedBox(height: 13),
                                  Image.asset(
                                    'assets/pantun.png',
                                    width: 100,
                                    height: 70,
                                  ),
                                  SizedBox(height: 17),
                                  Text(
                                    'Pantun Adat',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // Text(
                                  //   'More Info',
                                  //   style: TextStyle(
                                  //     fontSize: 12,
                                  //     color: Color.fromARGB(255, 192, 178, 52),
                                  //     fontFamily: 'Open Sans',
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //menu items
                  Positioned(
                    top: 460,
                    left: 20,
                    // left: MediaQuery.of(context).size.width / 5 - 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 192, 178, 52)
                                      .withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/iconperson.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  SizedBox(height: 0),
                                  Text(
                                    'Sejawaran',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // Text(
                                  //   'More Info',
                                  //   style: TextStyle(
                                  //     fontSize: 12,
                                  //     color: Color.fromARGB(255, 192, 178, 52),
                                  //     fontFamily: 'Open Sans',
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //galeri
                  Positioned(
                    top: 640,
                    right: 20,
                    left: 20,
                    // left: MediaQuery.of(context).size.width / 6.5 - 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GaleriPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                        backgroundColor: Color.fromARGB(255, 255, 213, 97),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.collections,
                            color: Color.fromARGB(255, 74, 48, 0),
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Galeri Foto",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 74, 48, 0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
