/*import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class MarketView extends StatelessWidget {
  const MarketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(235, 191, 216, 250),
        foregroundColor: Colors.black,
      ),
      drawer: Sidebar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.topCenter,
          child: MarketView(),
        ),
      ),
    );
  }
}
/*body: SingleChildScrollView(
       s child: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            //fit: BoxFit.cover,
                            image: AssetImage('./assets/images/coco.jpg'))),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Virgin Coconut Oil",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Itim',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    height: height * .07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Produk olahan kelapa berkualitas. Dengan proses penyulingan sentrifugal yang menghasilkan minyak kelapa murni berkualitas",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 15,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),*/

      import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mobile_pbl/view/navbar.dart';

class MarketView extends StatefulWidget {
  final String title;

  MarketView({this.title = 'Demo'});

  @override
  _MarketViewState createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(235, 191, 216, 250),
          foregroundColor: Colors.black,
        ),
        drawer: Sidebar(),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }

  Card buildCard() {
    var ran = Random();
    var cardImage = NetworkImage(
        'https://source.unsplash.com/random/800x600?house&' +
            ran.nextInt(100).toString());
    var supportingText = 'Product Description (On Going)';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            Container(
              height: 200.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('Harga (Placement)'),
                  onPressed: () {/* ... */},
                ),
              ],
            )
          ],
        ));
  }
}*/
