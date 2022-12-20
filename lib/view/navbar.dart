import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/about.view.dart';
import 'package:mobile_pbl/view/home.view.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Halaman Utama'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeView())),
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Market Place'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Berita Terbaru'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.villa),
            title: Text('Tentang Desa'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AboutView())),
          ),
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('Facebook'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.camera_alt_rounded),
            title: Text('Instagram'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: const Text('E-mail'),
            onTap: () => null,
          ),
          const SizedBox(
            height: 150,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                './assets/tambong.jpg',
                height: 200,
                width: 200,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
