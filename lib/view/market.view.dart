// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class MarketView extends StatefulWidget {
  const MarketView({Key? key}) : super(key: key);

  @override
  State<MarketView> createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
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
              produk1(),
              produk2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget produk1() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image(image: AssetImage('./assets/images/coco.jpg')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text("Virgin Coconut Oil",
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
                'Produk olahan kelapa berkualitas. Dengan proses penyulingan sentrifugal yang menghasilkan minyak kelapa murni berkualitas',
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
      );

  Widget produk2() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image(image: AssetImage('./assets/images/anyam.jpg')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text("Anyaman",
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
      );
}
