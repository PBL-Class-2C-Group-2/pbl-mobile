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
                SizedBox(height: 30),
                ElevatedButton(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Telusuri',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Itim',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    shape: StadiumBorder(),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Terbaru dari Tambong',
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      './assets/news/berita1.jpg',
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      './assets/news/berita2.png',
                    ),
                  ],
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      './assets/news/berita3.png',
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      './assets/news/berita4.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
