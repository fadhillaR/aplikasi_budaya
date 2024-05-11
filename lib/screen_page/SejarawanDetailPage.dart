import 'package:aplikasi_budaya/models/ModelSejarawan.dart';
import 'package:aplikasi_budaya/screen_page/update_sejarawan.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageDetailSejarawan extends StatelessWidget {
  final Datum? data;

  const PageDetailSejarawan(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                'http://192.168.100.6/budayaDb/gambar_sejarawan/${data?.foto}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Text(
              data?.nama ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 74, 48, 0)),
            ),
            subtitle: Text(
              DateFormat('dd-MM-yyyy').format(data?.tgl_lahir ?? DateTime.now()),
              style: TextStyle(
                color: Color.fromARGB(255, 74, 48, 0),
                fontSize: 11,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.edit,
                color: Color.fromARGB(255, 74, 48, 0),
              ),
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return updateSejarawan(
                        ListData: {
                          "id": data?.id,
                          "nama": data?.nama,
                          "foto": data?.foto,
                          "tgl_lahir": data?.tgl_lahir,
                          "asal": data?.asal,
                          "jk": data?.jk,
                          "deskripsi": data?.deskripsi,
                        },
                      );
                    }));
              },
            ),
          ),
          Column(
            children: [
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Asal\t\t:",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 74, 48, 0)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data?.asal ?? "\n",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 74, 48, 0)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Jenis Kelamin :",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 74, 48, 0)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data?.jk ?? "",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 74, 48, 0)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      data?.deskripsi ?? "",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 74, 48, 0)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
