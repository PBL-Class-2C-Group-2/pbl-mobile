import 'package:flutter/material.dart';
import 'package:html/parser.dart';

class DetailPage extends StatelessWidget {
  final judul, deskripsi, slug, gambar_berita, created_at;

  DetailPage(
      {this.judul = "",
      this.deskripsi,
      this.slug,
      this.gambar_berita,
      this.created_at});

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
            gambar_berita != null
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
                    '$judul',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$created_at',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Text(
                    '$deskripsi',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 5,
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
