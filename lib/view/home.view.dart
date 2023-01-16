import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/berita.view.dart';
import 'package:mobile_pbl/view/market.view.dart';
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
                      Card(
                        elevation: 7,
                        color: Color.fromARGB(231, 243, 255, 245),
                        child: ListTile(
                          leading: Icon(
                            Icons.newspaper,
                            size: 25,
                          ),
                          title: Text(
                            'Penyerahan Insentif Kepala Desa ke Beberapa Lembaga Desa',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => BeritaView())),
                        ),
                      ),
                      Card(
                        elevation: 7,
                        color: Color.fromARGB(231, 243, 255, 245),
                        child: ListTile(
                          leading: Icon(
                            Icons.newspaper,
                            size: 25,
                          ),
                          title: Text(
                            'Desa Tambong dan Aneka Ragam Perkebunannya',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => BeritaView())),
                        ),
                      ),
                      Card(
                        elevation: 7,
                        color: Color.fromARGB(231, 243, 255, 245),
                        child: ListTile(
                          leading: Icon(
                            Icons.newspaper,
                            size: 25,
                          ),
                          title: Text(
                            'Aneka Ragam Kuliner Desa Tambong',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => BeritaView())),
                        ),
                      ),
                    ],
                  ),
                ),

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
                    children: [
                      Card(
                        elevation: 7,
                        color: Color.fromARGB(231, 243, 255, 245),
                        child: ListTile(
                          leading: Icon(
                            Icons.store,
                            size: 25,
                          ),
                          title: Text(
                            'Virgin Coconut Oil',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => MarketView())),
                        ),
                      ),
                      Card(
                        elevation: 7,
                        color: Color.fromARGB(231, 243, 255, 245),
                        child: ListTile(
                          leading: Icon(
                            Icons.store,
                            size: 25,
                          ),
                          title: Text(
                            'Anyaman',
                            style: TextStyle(
                              fontFamily: 'Itim',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => MarketView())),
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
