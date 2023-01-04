// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'package:http/http.dart' as http;

class BeritaView extends StatefulWidget {
  const BeritaView({Key? key}) : super(key: key);

  @override
  State<BeritaView> createState() => _BeritaViewState();
}

class _BeritaViewState extends State<BeritaView> {
  List _get = [];
  final String url = "http://127.0.0.1:8000/api/users";

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
                height: 100,
                width: 200,
                child: _get[index]['urlToImage'] != null
                    ? Image.network(
                        _get[index]['urlToImage'],
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    : Center(),
              ),
              title: Text(
                '${_get[index]['email']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '${_get[index]['nama_lengkap']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (c) => DetailPage(
              //         url: _get[index]['url'],
              //         title: _get[index]['title'],
              //         content: _get[index]['content'],
              //         urlToImage: _get[index]['urlToImage'],
              //         author: _get[index]['author'],
              //         publishedAt: _get[index]['publishedAt'],
              //       ),
              //     ),
              //   );
              // },
            );
          }),
    );
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(url));
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
