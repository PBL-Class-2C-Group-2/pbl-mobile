import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_pbl/view/navbar.dart';

class HomeView extends StatelessWidget {
  List<String> images = ["assets/logo/facebook.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
      ),
      drawer: Sidebar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              'Selamat Datang di Desa Tambong',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text(
              'Telusuri keindahan alam desa dalam genggaman',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Telusuri',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
