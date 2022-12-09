import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 209, 236),
      ),
      drawer: Navbar(),
    );
    ;
  }
}
