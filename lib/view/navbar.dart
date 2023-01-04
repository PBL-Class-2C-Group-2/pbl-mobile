import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/about.view.dart';
import 'package:mobile_pbl/view/berita.view.dart';
import 'package:mobile_pbl/view/home.view.dart';
import 'package:mobile_pbl/view/market.view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Sidebar extends StatelessWidget {
  @override
  void _launchSocial(String url, String fallbackUrl) async {
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
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MarketView())),
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Berita Terbaru'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BeritaView())),
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
              onTap: () {
                _launchSocial('', 'https://facebook.com/officialpemdestambong');
              }),
          ListTile(
            leading: Icon(CommunityMaterialIcons.instagram),
            title: Text('Instagram'),
            onTap: () {
              _launchSocial('', 'https://instagram.com/pemdestambong/');
            },
          ),
          ListTile(
            leading: Icon(CommunityMaterialIcons.twitter),
            title: const Text('Twitter'),
            onTap: () {
              _launchSocial('', 'https://twitter.com/pemdestambong');
            },
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
