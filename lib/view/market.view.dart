import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class MarketView extends StatefulWidget {
  const MarketView({Key? key}) : super(key: key);

  @override
  State<MarketView> createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
  List _get = [];
  final String url = "http://127.0.0.1:8000/api/front-produk";

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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                './assets/home.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child:
                          Image(image: AssetImage('./assets/images/anyam.jpg')),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text('${_get.length}',
                          style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Produk kerajinan yang dibuat dari bambu yang dianyam secara tradisional.',
                        style: TextStyle(
                            fontFamily: 'Itim',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                      ),
                    ),
                    TextButton(
                      child: const Text('Pesan Sekarang'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
