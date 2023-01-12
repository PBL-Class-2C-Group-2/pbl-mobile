import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class HomeView extends StatelessWidget {
  List<String> images = ["assets/logo/facebook.png"];

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        backgroundColor: Color.fromARGB(235, 191, 216, 250),
        foregroundColor: Colors.black,
        shadowColor: Color.fromARGB(235, 191, 216, 250),
      ),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  './assets/home.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di',
                  style: TextStyle(
                    fontFamily: 'Itim',
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Desa Tambong',
                  style: TextStyle(
                    fontFamily: 'Itim',
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Telusuri keindahan alam desa dalam genggaman',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Itim',
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Terbaru dari Tambong',
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    // scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(
                            //     image:
                            //         AssetImage('./assets/images/berita1.png'),
                            //     fit: BoxFit.fill,
                            //   ),
                            //   borderRadius: BorderRadius.circular(20),
                            // ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Siapkan Rencana Kerja 2023, Pemdes Tambong Adakan Musrenbangdes',
                              style: TextStyle(
                                fontFamily: 'Itim',
                                color: Colors.black,
                                fontSize: 14,
                                backgroundColor: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('./assets/images/berita2.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Adakan Pelatihan, Pokdakan Susukan Lestari Ingin Wujudkan Tambong Sebagai Sentra Penghasil Ikan Air Tawar',
                              style: TextStyle(
                                fontFamily: 'Itim',
                                color: Colors.black,
                                fontSize: 14,
                                backgroundColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('./assets/images/berita3.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Tinjau Kesiapan Soft Launching, Kadisbudpar Banyuwangi & Camat Kabat Sambangi Taman Meru',
                              style: TextStyle(
                                fontFamily: 'Itim',
                                color: Colors.black,
                                fontSize: 14,
                                backgroundColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  'Produk Lokal Tambong',
                  style: TextStyle(
                    fontFamily: 'Itim',
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('./assets/images/coco.jpg'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Virgin Coconut Oil',
                              style: TextStyle(
                                fontFamily: 'Itim',
                                color: Colors.black,
                                fontSize: 14,
                                backgroundColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('./assets/images/anyam.jpg'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Anyaman',
                              style: TextStyle(
                                fontFamily: 'Itim',
                                color: Colors.black,
                                fontSize: 14,
                                backgroundColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: 10),
                // Row(
                //   children: [
                //     Image.asset(
                //       './assets/news/berita3.png',
                //     ),

                //     SizedBox(width: 20),
                //     Image.asset(
                //       './assets/news/berita4.png',
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
