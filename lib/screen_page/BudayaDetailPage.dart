import 'package:aplikasi_budaya/models/ModelInfo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageDetailBudaya extends StatelessWidget {
  final Datum? data;

  const PageDetailBudaya(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   // data!.judul,
        //   "Berita Terkini",
        //   style: TextStyle(color: Color.fromARGB(255, 74, 48, 0)),
        // ),
        backgroundColor: Color.fromARGB(255, 255, 213, 97),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'http://192.168.100.6/budayaDb/gambar_info/${data?.gambar}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Text(
              data?.judul ?? "",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 74, 48, 0)),
            ),
            subtitle:
                Text(DateFormat('dd-MM-yyyy').format(data?.tgl ?? DateTime.now()),
                style: TextStyle(
                  color: Color.fromARGB(255, 74, 48, 0),
                  fontSize: 11,
                ),),
            // trailing: Icon(
            //   Icons.star,
            //   color: Color.fromARGB(255, 74, 48, 0),
            // ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 213, 97),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
                top: Radius.circular(20),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: Text(
              data?.konten ?? "",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 74, 48, 0)),
            ),
          )
        ],
      ),
    );
  }
}
