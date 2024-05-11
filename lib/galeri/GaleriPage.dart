import 'package:aplikasi_budaya/models/ModelGaleri.dart';
import 'package:aplikasi_budaya/screen_page/HomePage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:photo_view/photo_view.dart';

class GaleriPage extends StatefulWidget {
  @override
  _GaleriPageState createState() => _GaleriPageState();
}

class ZoomableImage extends StatelessWidget {
  final String imageUrl;

  ZoomableImage({required this.imageUrl});

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
                MaterialPageRoute(builder: (context) => GaleriPage()),
                (route) => false);
          },
        ),
        toolbarHeight: 50,
        backgroundColor: Color.fromARGB(255, 255, 213, 97),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Color.fromARGB(255, 255, 213, 97),
          child: PhotoView(
            imageProvider: NetworkImage(imageUrl),
            backgroundDecoration: BoxDecoration(color: Colors.black),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2.0,
          ),
        ),
      ),
    );
  }
}

class _GaleriPageState extends State<GaleriPage> {
  Future<List<Datum>?> getGaleri() async {
    // Endpoint API galeri
    String apiUrl =
        'http://192.168.100.6/budayaDb/getGallery.php?data=galeri'; // Ganti dengan URL API yang sesuai

    try {
      // Melakukan request HTTP GET ke API
      final response = await http.get(Uri.parse(apiUrl));

      // Cek status kode response
      if (response.statusCode == 200) {
        // Parsing data JSON ke dalam objek ModelGaleri menggunakan modelGaleriFromJson
        List<Datum> galeriList = modelGaleriFromJson(response.body).data;

        // Mengembalikan data galeri
        return galeriList;
      } else {
        // Jika request gagal, lempar sebuah Exception
        throw Exception('Failed to load galeri');
      }
    } catch (e) {
      // Tangani jika terjadi error
      print('Error: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallery',
          style: TextStyle(color: Color.fromARGB(255, 74, 48, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 255, 213, 97),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationPage()),
                (route) => false);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List<Datum>?>(
          future: getGaleri(),
          builder: (BuildContext context, AsyncSnapshot<List<Datum>?> snapshot) {
            // Tampilkan indikator loading jika future belum selesai
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
        
            // Tampilkan pesan jika terjadi error
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
        
            // Tampilkan data galeri jika future selesai
            if (snapshot.hasData && snapshot.data != null) {
              List<Datum> galeri = snapshot.data!;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemCount: galeri.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ZoomableImage(
                                imageUrl:
                                    'http://192.168.100.6/budayaDb/photo/${galeri[index].gambar}'),
                          ),
                        );
                      },
                      child: Image.network(
                        'http://192.168.100.6/budayaDb/photo/${galeri[index].gambar}',
                        fit: BoxFit.cover,
                      ));
                },
              );
            }
        
            // Tampilkan pesan jika tidak ada data galeri
            return Center(child: Text('No data available'));
          },
        ),
      ),
    );
  }
}
