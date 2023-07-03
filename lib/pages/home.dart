import 'package:anteran_online/models/colors.dart';
import 'package:anteran_online/pages/formulir_pendaftaran.dart';
import 'package:anteran_online/pages/riwayat_pendaftaran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // void _launchUrl(String url) async {
  //   await canLaunchUrl(url) ? launchUrl(url) : throw 'Tidak bisa wa $url';
  // }
  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url as Uri)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 151, 179, 185),
                  Color.fromARGB(255, 236, 236, 236),
                  Colors.grey.shade50,
                ])),
          ),
          ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            children: [
              SizedBox(
                height: 30,
              ),
              Text('Selamat Datang',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text(
                'Di Antrean Online Kabupatem Pemalang',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/img/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => FormulirPendaftaran())));
                      },
                      child: Container(
                        height: 56,
                        width: 115,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorSelect.cAccent),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => RiwayatPendaftaran())));
                      },
                      child: Container(
                        height: 56,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorSelect.cAccent),
                        child: Text(
                          'Riwayat\n Pendaftaran',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Alur Pendaftaran',
                  style: TextStyle(
                      fontSize: 23,
                      color: ColorSelect.cFontGrey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorSelect.cAccent),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '1. Siapkan data diri anda',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Image.asset('assets/img/ktp.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '2. Isi formulir pendaftaran\n    pada menu daftar diatas',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Image.asset('assets/img/formulir.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '3. Dapatkan tiket antrian',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Image.asset('assets/img/ticket.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Ketentuan',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorSelect.cFontGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      child: Text(
                        'o',
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorSelect.cFontGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Nomor tiket akan dikirimkan otomatis melalui email silahkan tunjukan nomor tiket ke petugas',
                        style: TextStyle(
                            fontSize: 18, color: ColorSelect.cFontGrey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      child: Text(
                        'o',
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorSelect.cFontGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Pastikan Anda datang 15 menit sebelum waktu kedatangan yang Anda pilih, dengan membawa identitas diri Anda.',
                        style: TextStyle(
                            fontSize: 18, color: ColorSelect.cFontGrey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      // final Uri url = Uri(
                      //   scheme: 'tel',
                      //   path: '62-8773-0431-890'
                      // )
                      launchUrl(Uri.parse('tel:+62-8773-0431-890'));
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/img/call.png'),
                        Text(
                          'Hubungi kami',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.cFontGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(Uri.parse('https://wa.me/+6287730431890'));
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/img/wa.png'),
                        Text(
                          'Whatsapp kami',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.cFontGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
