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
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      './assets/home.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                //height: 500,
                padding: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                            image: AssetImage('./assets/images/coco.jpg')),
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
                ),
              ),
              Container(
                //height: 500,
                padding: EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                            image: AssetImage('./assets/images/anyam.jpg')),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
