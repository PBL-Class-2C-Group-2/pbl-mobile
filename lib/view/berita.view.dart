// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class BeritaView extends StatefulWidget {
  const BeritaView({Key? key}) : super(key: key);

  @override
  State<BeritaView> createState() => _BeritaViewState();
}

class _BeritaViewState extends State<BeritaView> {
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
              SizedBox(height: 15),
              Text(
                'Berita Terbaru',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 26,
                ),
                textAlign: TextAlign.left,
              ),
              berita1(),
              berita2(),
              berita3(),
            ],
          ),
        ),
      ),
    );
  }

  Widget berita1() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image(image: AssetImage('./assets/images/berita1.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                  "Siapkan Rencana Kerja 2023,Pemdes Tambong Adakan Musrenbangdes",
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );

  Widget berita2() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image(image: AssetImage('./assets/images/berita2.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                  "Adakan Pelatihan, Pokdakan Susukan Lestari Ingin Wujudkan Tambong Sebagai Sentra Penghasil Ikan Air Tawar",
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );

  Widget berita3() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image(image: AssetImage('./assets/images/berita3.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                  "Tinjau Kesiapan Soft Launching, Kadisbudpar Banyuwangi & Camat Kabat Sambangi Taman Meru",
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
}

//