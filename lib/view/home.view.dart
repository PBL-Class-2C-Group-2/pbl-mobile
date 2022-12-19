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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang di Desa Tambong',
            style: TextStyle(
              fontFamily: 'Itim',
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
