import 'package:aplikasi_budaya/screen_page/GaleriPage.dart';
import 'package:aplikasi_budaya/screen_page/PageUtama.dart';
import 'package:aplikasi_budaya/screen_page/list_budaya.dart';
import 'package:aplikasi_budaya/screen_page/list_sejarawan.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});
  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: tabController,
          children: const [PageMulai(), PageListBudaya(), PageListSejarawan()]),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20), bottom: Radius.circular(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabBar(
                isScrollable: true,
                labelColor: Color.fromARGB(255, 74, 48, 0),
                unselectedLabelColor: Color.fromARGB(255, 192, 178, 52),
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.history_edu),
                  ),
                  Tab(
                    icon: Icon(Icons.groups_outlined),
                  ),
                ],
              ),
              SizedBox(width: 0),
            ],
          ),
        ),
      ),
    );
  }
}


