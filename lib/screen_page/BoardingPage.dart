import 'package:aplikasi_budaya/models/BoardModel.dart';
import 'package:aplikasi_budaya/screen_page/MenuPage.dart';
import 'package:flutter/material.dart';

class BoardPage extends StatefulWidget {
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 213, 97),
              image: DecorationImage(
                  image: AssetImage('assets/bgboard.png'),
                  opacity: 0.1,
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1,
                          ),
                          Image(
                            image: AssetImage(contents[i].image),
                            width: 200,
                            height: 200,
                          ),
                          SizedBox(height: 30,),
                          Text(
                            contents[i].title,
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 74, 48, 0)),
                          ),
                          SizedBox(height: 20),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 74, 48, 0),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(color: Color.fromARGB(255, 74, 48, 0)),
                  ),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MenuPage(),
                        ),
                      );
                    }
                    _controller.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white),
                    backgroundColor: const Color.fromARGB(255, 192, 178, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
