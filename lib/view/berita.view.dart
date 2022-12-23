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
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('./assets/images/berita1.png'),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Siapkan Rencana Kerja 2023, Pemdes Tambong Adakan Musrenbangdes',
              style: TextStyle(
                fontFamily: 'Itim',
                color: Colors.black,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget berita2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('./assets/images/berita2.png'),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Adakan Pelatihan, Pokdakan Susukan Lestari  Ingin Wujudkan Tambong Sebagai Sentra Penghasil Ikan Air Tawar ',
              style: TextStyle(
                fontFamily: 'Itim',
                color: Colors.black,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget berita3() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('./assets/images/berita3.png'),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Tinjau Kesiapan Soft Launching, Kadisbudpar Banyuwangi & Camat Kabat Sambangi Taman Meru',
              style: TextStyle(
                fontFamily: 'Itim',
                color: Colors.black,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
