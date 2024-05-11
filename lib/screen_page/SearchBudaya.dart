import 'dart:convert';

import 'package:aplikasi_budaya/models/ModelInfo.dart';
import 'package:aplikasi_budaya/screen_page/BudayaDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageSearchBudaya extends StatefulWidget {
  const PageSearchBudaya({Key? key});

  @override
  State<PageSearchBudaya> createState() => _PageSearchBudayaState();
}

class _PageSearchBudayaState extends State<PageSearchBudaya> {
  TextEditingController _searchController = TextEditingController();
  List<dynamic> _budayaList = [];
  List<dynamic> _filteredBudayaList = [];

  @override
  void initState() {
    super.initState();
    fetchBudaya();
  }

  Future<void> fetchBudaya() async {
    final response = await http
        .get(Uri.parse('http://192.168.100.6/budayaDb/getBudaya.php'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      setState(() {
        _budayaList = responseData['data'];
        _filteredBudayaList = _budayaList;
      });
    } else {
      throw Exception('Failed to load Data');
    }
  }

  void _filterBudaya(String query) {
    setState(() {
      _filteredBudayaList = _budayaList
          .where((judul) =>
              judul['judul'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _navigateToDetail(dynamic budayaData) {
  Datum? budaya = Datum.fromJson(budayaData); // Mengonversi JSON menjadi objek Datum
  if (budaya != null) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageDetailBudaya(budaya)),
    );
  } else {
    // Handle error or show message that data is not available
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cari Info Seputar Budaya & Adat',
          style: TextStyle(color: Color.fromARGB(255, 74, 48, 0), fontSize: 18),
        ),
        backgroundColor: Color.fromARGB(255, 255, 213, 97),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _filterBudaya(value);
              },
              decoration: InputDecoration(
                labelText: 'search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 192, 178, 52)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredBudayaList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      _filteredBudayaList[index]['judul'],
                      style: TextStyle(color: Color.fromARGB(255, 74, 48, 0)),
                    ),
                    onTap: () => _navigateToDetail(_filteredBudayaList[index]), // Tambahkan fungsi onTap di sini
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
