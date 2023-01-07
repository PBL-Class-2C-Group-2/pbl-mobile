import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final judul, deskripsi, slug, urlToImage, created_at;

  DetailPage(
      {this.judul = "",
      this.deskripsi,
      this.slug,
      this.urlToImage,
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
            urlToImage != null
                ? Image.network(urlToImage)
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
