// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/produk.detail.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'package:http/http.dart' as http;

class MarketView extends StatefulWidget {
  MarketView({Key? key}) : super(key: key);

  @override
  State<MarketView> createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
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
        title: const Text('Produk Lokal Tambong'),
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
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: Image.asset(
                "./assets/images/anyam.jpg",
                width: 64.0,
                height: 64.0,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              '${_get[index]['nama_produk']}',
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
                  builder: (c) => ProdukDetailPage(
                    nama_produk: _get[index]['nama_produk'],
                    deskripsi: _get[index]['deskripsi'],
                    slug: _get[index]['slug'],
                    created_at: _get[index]['created_at'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future _getData() async {
    try {
      final response =
          await http.get(Uri.parse("http://127.0.0.1:8000/api/front-produk"));
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
