import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdukDetailPage extends StatelessWidget {
  final nama_produk, deskripsi, slug, gambar_produk, created_at, no_telp;

  ProdukDetailPage(
      {this.nama_produk = "",
      this.deskripsi,
      this.slug,
      this.gambar_produk,
      this.no_telp,
      this.created_at});

  @override
  void _launchWa(String url, String fallbackUrl) async {
    try {
      bool launched =
          await launch(url, forceWebView: true, forceSafariVC: true);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: true, forceWebView: true);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: true, forceWebView: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Center(
          child: const Text(
            "Detail",
            style: TextStyle(color: Colors.black),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            gambar_produk != null
                ? Image.network("https://i.ibb.co/S32HNjD/no-image.jpg")
                : Container(
                    margin: EdgeInsets.all(20),
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey),
                  ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$nama_produk',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$deskripsi',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        _launchWa('', 'https://wa.me/$no_telp');
                      },
                      child: Text(
                        'Pesan Sekarang',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      //Floating Action Button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        backgroundColor: Colors.black87,
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HtmlTags {
  static void removeTag({htmlString, callback}) {
    var document = parse(htmlString);
    String parsedString = parse(document.body!.text).documentElement!.text;
    callback(parsedString);
  }
}
