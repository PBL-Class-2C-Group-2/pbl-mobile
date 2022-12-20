import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';

class AboutView extends StatelessWidget {
  AboutView({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              'Tentang Desa',
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15),
            Image.asset(
              './assets/images/about.jpg',
            ),
            SizedBox(width: 20),
            Text(
              'Desa Wisata Tambong merupakan salah satu desa wisata yang ada di Kecamatan kabat yang berjarak 13 Km dari Pusat Kota Pemerintahan Kabupaten Banyuwangi. Luas wilayah Desa Tambong lebih kurang 576.2 Ha dengan Koordinat Bujur 114.301471, Koordinat Lintang -8.274417, Ketinggian 20 MDPL dengan penduduk 3384 Jiwa. Nama Tambong sendiri berasal dari nama Bambu/ Pring/ Jajang Tambong yang dulunya banyak tumbuh di wilayah tersebut. Penduduk Desa Tambong adalah suku osing yang merupakan suku asli Kabupaten Banyuwangi dan mayoritas penduduknya memeluk agama Islam',
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Tambong memiliki beragam budaya, mulai dari bahasa, dialek , kesenian dan adat istiadat yang sangat dijunjung. Selain itu, Tambong juga menyuguhkan wisata alam, budaya serta sejarah yang tak bisa dipisahkan.  Di jaman sekarang ini, Desa wisata Tambong dituntut untuk terus mengikuti perkembangan teknologi serta informasi. Dalam hal diggitalisasi manajemen desa wisata masih perlu banyak dibahas dan itu menjadi bagian yang tak terpisahkan dan merupakan sebuah tantangan yang harus dihadapi bersama.',
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Seiring dengan itu, Desa Wisata  Tambong  sudah menjalankan Program Smart Kampung dari Pemerintah Kabupaten Banyuwangi. Hal ini tentunya memudahkan Pelayanan Publik yang terkoneksi secara online dan Ruang Publik yang memiliki akses internet untuk mendukung kegiatan wisata. Adanya aplikasi Banyuwangi Tourism yang tersedia di iOS dan Playstore juga memudahkan wisatawan untuk mencari tujuan wisata, paket wisata, hotel, homestay, resort, hingga jadwal Banyuwangi Festival.',
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
