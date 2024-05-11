import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:core';

class PageUpdateProfil extends StatefulWidget {
  @override
  _PageUpdateProfilState createState() => _PageUpdateProfilState();
}

class _PageUpdateProfilState extends State<PageUpdateProfil> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? id;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      usernameController.text = prefs.getString('username') ?? '';
      fullnameController.text = prefs.getString('fullname') ?? '';
      passwordController.text = prefs.getString('password') ?? '';
      emailController.text = prefs.getString('email') ?? '';
      id = prefs.getString('id');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Profile', style: TextStyle(color: Color.fromARGB(255, 74, 48, 0)),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 74, 48, 0)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Card(
                        elevation: 1,
                        color: Color.fromARGB(255, 255, 213, 97),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Center(
                                child: Text(
                                  'Edit Profil',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 74, 48, 0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Nama tidak boleh kosong";
                                //   }
                                // },
                                controller: usernameController,
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(fontSize: 14),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 74, 48, 0),
                                ),
                              ),
                              TextFormField(
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return "Nama tidak boleh kosong";
                                //   }
                                // },
                                controller: fullnameController,
                                decoration: InputDecoration(
                                  labelText: 'Nama Lengkap',
                                  labelStyle: TextStyle(fontSize: 14),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 74, 48, 0),
                                ),
                              ),
                              TextFormField(
                                // validator: (val) {
                                //   if (val!.isEmpty) {
                                //     return "Tidak Boleh kosong";
                                //   } else if (!emailRegex.hasMatch(val)) {
                                //     return "ex: ex@mail.com";
                                //   }
                                //   return null;
                                // },
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(fontSize: 14),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 74, 48, 0),
                                ),
                              ),
                              TextFormField(
                                obscureText: _obscureText,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password tidak boleh kosong";
                                  }
                                },
                                controller: passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(fontSize: 14),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color.fromARGB(255, 74, 48, 0),
                                      size: 14.0,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 74, 48, 0),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'ID User: $id',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 255, 213, 97),
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            _editProfile();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 192, 178, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _editProfile() async {
    final username = usernameController.text;
    final fullname = fullnameController.text;
    final email = emailController.text;
    final password = passwordController.text;

    // Validasi jika data kosong
    if (username.isEmpty ||
        fullname.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Isi Semua Data'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('YES'),
              ),
            ],
          );
        },
      );
      return; // Stop the execution flow
    } else if (!email.contains('@mail.com')) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Alamat email harus berakhir dengan "@mail.com"'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('YES'),
              ),
            ],
          );
        },
      );
      return; // Stop the execution flow
    }

    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      id = prefs.getString('id');

      final response = await http.post(
        Uri.parse('http://192.168.100.6/budayaDb/updateUser.php'),
        body: {
          'id': id,
          'username': username,
          'fullname': fullname,
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['status'] == 'success') {
          prefs.setString('username', username);
          prefs.setString('fullname', fullname);
          prefs.setString('email', email);
          prefs.setString('password', password);

          // Update nilai controller
          usernameController.text = username;
          fullnameController.text = fullname;
          emailController.text = email;
          passwordController.text = password;

          Navigator.pop(context, true);

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Berhasil'),
                content: Text('Data berhasil diupdate.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Gagal'),
                content: Text('Gagal Edit data'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('YES'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        throw Exception('Gagal edit data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Terjadi kesalahan saat mengedit profile.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('YES'),
              ),
            ],
          );
        },
      );
    }
  }
}
