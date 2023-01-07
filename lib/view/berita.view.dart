// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/berita.detail.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'package:http/http.dart' as http;

class BeritaView extends StatefulWidget {
  const BeritaView({Key? key}) : super(key: key);

  @override
  State<BeritaView> createState() => _BeritaViewState();
}

class _BeritaViewState extends State<BeritaView> {
  List _get = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(235, 191, 216, 250),
        foregroundColor: Colors.black,
        shadowColor: Color.fromARGB(235, 191, 216, 250),
      ),
      drawer: Sidebar(),
      body: ListView.builder(
          itemCount: _get.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                color: Colors.white,
                height: 200,
                width: 100,
                child: _get[index]['urlToImage'] != null
                    ? Image.network(
                        _get[index]['urlToImage'],
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    : Center(),
              ),
              title: Text(
                '${_get[index]['judul']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '${_get[index]['deskripsi']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => DetailPage(
                      judul: _get[index]['judul'],
                      created_at: _get[index]['created_at'],
                      deskripsi: _get[index]['deskripsi'],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }

  Future _getData() async {
    try {
      final response =
          await http.get(Uri.parse("http://127.0.0.1:8000/api/front-berita"));
      // return jsonDecode(response.body);

      // untuk cek data
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _get = data['data'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
