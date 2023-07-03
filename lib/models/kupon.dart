import 'package:anteran_online/pages/detail_booking.dart';
import 'package:anteran_online/pages/formulir_pendaftaran.dart';
import 'package:anteran_online/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class KuponDaftar extends StatelessWidget {
  const KuponDaftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 203, 212, 214)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/img/barcode.png',
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    Utils.namaCon.text,
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                  Text(
                    Utils.valLayanan!,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').format(Utils.dateTime!),
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  Text(
                    Utils.valWaktu!,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailBooking(),
                          ));
                    },
                    icon: Icon(Icons.remove_red_eye_outlined)),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormulirPendaftaran(),
                          ));
                    },
                    child: Image.asset('assets/img/edit.png'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
