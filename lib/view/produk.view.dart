import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class ProdukView extends StatefulWidget {
  const ProdukView({Key? key}) : super(key: key);

  @override
  State<ProdukView> createState() => _ProdukViewState();
}

class _ProdukViewState extends State<ProdukView> {
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
        title: const Text('Produk Desa Tambong'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(235, 191, 216, 250),
        foregroundColor: Colors.black,
        shadowColor: const Color.fromARGB(235, 191, 216, 250),
      ),
      drawer: Sidebar(),
      body: FutureBuilder(
        future: _getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: _get.length,
              itemBuilder: (context, index) {
                return Text('${_get[index]['nama_produk']}');
              },
            );
          } else {
            return Text('Data Error');
          }
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
