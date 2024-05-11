import 'package:aplikasi_budaya/models/ModelInfo.dart';
import 'package:aplikasi_budaya/screen_page/BudayaDetailPage.dart';
import 'package:aplikasi_budaya/screen_page/HomePage.dart';
import 'package:aplikasi_budaya/screen_page/SearchBudaya.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class PageListBudaya extends StatefulWidget {
  const PageListBudaya({super.key});

  @override
  State<PageListBudaya> createState() => _PageListBudayaState();
}

class _PageListBudayaState extends State<PageListBudaya> {
  Future<List<Datum>?> getBudaya() async {
    try {
      http.Response res = await http
          .get(Uri.parse('http://192.168.100.6/budayaDb/getBudaya.php'));
      return modelBudayaFromJson(res.body).data;
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationPage()),
                (route) => false);
          },
        ),
        toolbarHeight: 50,
        backgroundColor: Color.fromARGB(255, 255, 213, 97),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageSearchBudaya();
              }));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Color.fromARGB(
                  255, 255, 213, 97),
              padding: EdgeInsets.only(left: 8, top: 8, right: 8),
              child: Stack(children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/iconn.png',
                    width: 90,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '\t\tBeragam Budaya dan Adat',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(
                        255, 74, 48, 0), 
                  ),
                ),
              ]),
            ),
            SizedBox(height: 10),
            Expanded(
              child: FutureBuilder(
                future: getBudaya(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Datum>?> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        Datum? data = snapshot.data?[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Card(
                              elevation: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageDetailBudaya(data)),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ListTile(
                                      title: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 5),
                                            Text(
                                              "${data?.judul}",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(255, 74, 48, 0),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Last Update: ${DateFormat('dd-MM-yyyy').format(data?.tgl ?? DateTime.now())}",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff468CE7),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalfCircleHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 255, 213, 97),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -MediaQuery.of(context).size.width / 2,
            right: -MediaQuery.of(context).size.width / 2,
            child: ClipOval(
              child: Container(
                height: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 255, 213, 97),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'BUDAYA & ADAT INDONESIA',
                    style: TextStyle(
                      color: Color.fromARGB(255, 74, 48, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text(
                  //   'Matematika adalah ilmu yang\nmempelajari hal-hal seperti besaran,\nstruktur, ruang dan perubahan',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 13,
                  //     fontFamily: 'Alata',
                  //   ),
                  // ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 120; // tinggi maksimal

  @override
  double get minExtent => 120; // tinggi minimal

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
