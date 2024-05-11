import 'package:aplikasi_budaya/screen_page/UpdateProfilPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageProfil extends StatefulWidget {
  @override
  _PageProfilState createState() => _PageProfilState();
}

class _PageProfilState extends State<PageProfil> {
  String username = '';
  String fullname = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  // void initVariables() {
  //   username = "default_username"; // Inisialisasi variabel username
  // }

  Future<void> _loadProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? '';
      fullname = prefs.getString('fullname') ?? '';
      email = prefs.getString('email') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false, // Hide the back button
        toolbarHeight: 40,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: HalfCircleHeader(),
            floating: false,
            pinned: false,
          ),
          SliverToBoxAdapter(
            // child: SizedBox(height: 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 500,
                              child: Card(
                                elevation: 1,
                                color: Color.fromARGB(255, 255, 213, 97),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Image.asset(
                                        'assets/iconn.png',
                                        width: 180,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'DATA PRIBADI',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                            ),
                                          ),

                                          //username
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Username :',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '$username',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontSize: 12,
                                            ),
                                          ),

                                          //fullname
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Nama Lengkap :',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '$fullname',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontSize: 12,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),

                                          //email
                                          Text(
                                            'Email :',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '$email',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 74, 48, 0),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text(
                                  "Ubah Profil",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PageUpdateProfil()));
                                },
                                style: ElevatedButton.styleFrom(
                                  // textStyle: TextStyle(color: Colors.white),
                                  backgroundColor:
                                      Color.fromARGB(255, 192, 178, 52),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // child: Container(
            //   height: 100,
            // ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 50; // tinggi maksimal

  @override
  double get minExtent => 20; // tinggi minimal

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
