import 'dart:async';
import 'package:anteran_online/models/colors.dart';
import 'package:anteran_online/pages/home.dart';
import 'package:anteran_online/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailBooking extends StatefulWidget {
  const DetailBooking({Key? key}) : super(key: key);

  @override
  State<DetailBooking> createState() => _DetailBookingState();
}

class _DetailBookingState extends State<DetailBooking> {
  Timer? _timer;
  int _start = 7;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(),
          title: Text('Formulir Pendaftaran Online'),
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(255, 163, 186, 187),
          backgroundColor: Color.fromARGB(255, 163, 186, 187)),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 50, right: 50),
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color: ColorSelect.cFontGrey.withOpacity(0.5)))),
                  child: Text(
                    'Detail Booking',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.cFontGrey),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/img/barcode.png',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '(Kode Booking)',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'KP-YGA01',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    Utils.valWaktu!,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Status',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 160,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 236, 179, 7)),
                      alignment: Alignment.center,
                      child: Text(
                        'Sudah Check-In',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorSelect.cAccent),
              alignment: Alignment.center,
              child: Text(
                'Tunjukan QRCode pada petugas atau pindai QRCode pada mesin cetak antrian. Harap datang 15 menit sebelum waktu kunjungan Anda',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorSelect.cAccent),
              alignment: Alignment.center,
              child: Text(
                'Anda dapat mengubah data yang sudah diisi pada menu riwayat pendaftaran',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorSelect.cAccent),
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(spellOut: true, children: [
                  TextSpan(
                    text: 'Anda akan dialihkan ke menu utama dalam ',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  TextSpan(
                    text: '$_start',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
