import 'package:anteran_online/models/kupon.dart';
import 'package:anteran_online/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RiwayatPendaftaran extends StatelessWidget {
  const RiwayatPendaftaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isData;
    return Scaffold(
      appBar: AppBar(
          title: Text('Riwayat Pendaftaran'),
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(255, 163, 186, 187),
          backgroundColor: Color.fromARGB(255, 163, 186, 187)),
      body: (Utils.valLayanan != null)
          ? ListView(
              padding: EdgeInsets.only(top: 20),
              children: [
                KuponDaftar(),
                // KuponDaftar(),
                // KuponDaftar(),
              ],
            )
          : Center(
              child: Text(
                'Belum ada riwayat pendaftaran',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
