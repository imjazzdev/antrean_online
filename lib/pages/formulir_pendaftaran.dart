import 'package:anteran_online/models/button.dart';
import 'package:anteran_online/models/colors.dart';
import 'package:anteran_online/pages/detail_booking.dart';
import 'package:anteran_online/utils/utils.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class FormulirPendaftaran extends StatefulWidget {
  const FormulirPendaftaran({Key? key}) : super(key: key);

  @override
  State<FormulirPendaftaran> createState() => _FormulirPendaftaranState();
}

class _FormulirPendaftaranState extends State<FormulirPendaftaran> {
  TextEditingController nikCon = TextEditingController();

  TextEditingController hpCon = TextEditingController();
  TextEditingController alamatCon = TextEditingController();
  int? _valueRadio = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Formulir Pendaftaran Online'),
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(255, 163, 186, 187),
          backgroundColor: Color.fromARGB(255, 163, 186, 187)),
      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
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
                    'Informasi Pengunjung',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.cFontGrey),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NIK Pengunjung',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: nikCon,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(
                          fontSize: 19, color: ColorSelect.cFontGrey)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Pengunjung',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: Utils.namaCon,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(
                          fontSize: 19, color: ColorSelect.cFontGrey)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data Pengunjung',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _valueRadio,
                          onChanged: (value) {
                            setState(() {
                              _valueRadio = value as int?;
                            });
                          },
                          fillColor: MaterialStateProperty.all(Colors.green),
                          activeColor: Colors.green,
                        ),
                        SizedBox(
                          child: Text(
                            'Diri sendiri',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorSelect.cFontGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _valueRadio,
                          onChanged: (value) {
                            setState(() {
                              _valueRadio = value as int?;
                            });
                          },
                          fillColor: MaterialStateProperty.all(Colors.green),
                          activeColor: Colors.green,
                        ),
                        SizedBox(
                          child: Text(
                            'Kuasa Wajib Pajak',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorSelect.cFontGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nomor HP',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: hpCon,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(
                          fontSize: 19, color: ColorSelect.cFontGrey)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat Email',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: alamatCon,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(
                          fontSize: 19, color: ColorSelect.cFontGrey)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  if (nikCon.text == '' ||
                      Utils.namaCon.text == '' ||
                      hpCon.text == '' ||
                      alamatCon.text == '') {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.scale,
                      dialogType: DialogType.warning,
                      title: 'Mohon lengkapi data dahulu',
                      btnOkOnPress: () {},
                    ).show();
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => LayananDanWaktu())));
                  }
                },
                child: Button(
                    color: Colors.green,
                    height: 40,
                    text: 'Berikutnya',
                    width: 120),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class LayananDanWaktu extends StatefulWidget {
  const LayananDanWaktu({Key? key}) : super(key: key);

  @override
  State<LayananDanWaktu> createState() => _LayananDanWaktuState();
}

class _LayananDanWaktuState extends State<LayananDanWaktu> {
  List _bappenda = [
    "Bappenda Kab. Pemalang",
    "Bappenda Kab. Pemalang",
    "Bappenda Kab. Pemalang",
  ];
  List _waktu = [
    "08:00 - 10:00",
    "10:00 - 12:00",
    "13:00 - 15:00",
  ];
  List _layanan = [
    "Pemberkasan BPHTB",
    "Pengambilan BPHTB",
    "Informasi PBB P2",
    "Pemberkasan PBB P2",
    "Daftar Baru PBB P2",
    "Mutasi PBB P2",
  ];

  bool _isButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Formulir Pendaftaran Online'),
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(255, 163, 186, 187),
          backgroundColor: Color.fromARGB(255, 163, 186, 187)),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(left: 30, right: 30, top: 30),
          children: [
            SizedBox(
              height: 20,
            ),
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
                    'Layanan Dan Waktu',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.cFontGrey),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kantor Tujuan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorSelect.cFontGrey,
                ),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                'Bappenda Kab. Pemalang',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            // Container(
            //   height: 40,
            //   padding: EdgeInsets.only(left: 10, right: 10),
            //   decoration: BoxDecoration(
            //       border: Border.all(
            //         color: ColorSelect.cFontGrey,
            //       ),
            //       borderRadius: BorderRadius.circular(10)),
            //   child: DropdownButton(
            //     hint: Text("Pilih Bappenda Tujuan"),
            //     value: Utils.valBappenda,
            //     items: _bappenda.map((value) {
            //       return DropdownMenuItem(
            //         child: Text(value),
            //         value: value,
            //       );
            //     }).toList(),
            //     onChanged: (value) {
            //       setState(() {
            //         Utils.valBappenda = value
            //             as String?; //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
            //       });
            //     },
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Tanggal Kunjungan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorSelect.cFontGrey,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Utils.dateTime == null
                        ? 'Pilih Tanggal Kunjungan'
                        : DateFormat('dd-MM-yyyy').format(Utils.dateTime!),
                    style: TextStyle(
                        fontSize: 17, color: Colors.black.withOpacity(0.8)),
                  ),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2030),
                        ).then((date) {
                          setState(() {
                            Utils.dateTime = date;
                          });
                        });
                      },
                      icon: Icon(Icons.calendar_month_rounded))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Waktu Pelayanan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorSelect.cFontGrey,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                underline: SizedBox(),
                hint: Text("-- Pilih Waktu --"),
                value: Utils.valWaktu,
                items: _waktu.map((value) {
                  return DropdownMenuItem(
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    Utils.valWaktu = value
                        as String?; //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                  });
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Layanan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorSelect.cFontGrey,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                underline: SizedBox(),
                hint: Text("-- Pilih Layanan --"),
                value: Utils.valLayanan,
                items: _layanan.map((value) {
                  return DropdownMenuItem(
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _isButton = true;
                    Utils.valLayanan = value as String?;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),

            _isButton
                ? Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => InformasiAntrean())));
                      },
                      child: Button(
                          color: Colors.green,
                          height: 40,
                          text: 'Berikutnya',
                          width: 120),
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class InformasiAntrean extends StatefulWidget {
  const InformasiAntrean({Key? key}) : super(key: key);

  @override
  State<InformasiAntrean> createState() => _InformasiAntreanState();
}

class _InformasiAntreanState extends State<InformasiAntrean> {
  int? _valueRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Formulir Pendaftaran Online'),
          centerTitle: true,
          elevation: 20,
          shadowColor: Color.fromARGB(255, 163, 186, 187),
          backgroundColor: Color.fromARGB(255, 163, 186, 187)),
      body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
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
                    'Informasi Antrean',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: ColorSelect.cFontGrey),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Kantor Tujuan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorSelect.cFontGrey,
                    ),
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  'Bappenda Kab Pemalang',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Alamat Kantor',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorSelect.cFontGrey,
                    ),
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  'Jl. Jend. Sudirman Tim. No.64, Pakis Aji, Wanarejan Utara, Kec. Taman, Kabupaten Pemalang, Jawa Tengah 52353',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Jenis layanan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorSelect.cFontGrey,
                    ),
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  Utils.valLayanan!,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Tanggal Layanan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorSelect.cFontGrey,
                    ),
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  DateFormat('dd-MM-yyyy').format(Utils.dateTime!),
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sesi Kunjungan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorSelect.cFontGrey,
                    ),
                    borderRadius: BorderRadius.circular(7)),
                child: Text(
                  Utils.valWaktu!,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  fillColor: MaterialStateProperty.all(Colors.green),
                  value: 1,
                  groupValue: _valueRadio,
                  onChanged: (value) {
                    setState(() {
                      _valueRadio = value as int?;
                    });
                  },
                ),
                Text(
                  'Data yang saya masukan sudah benar',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 17,
            ),
            (_valueRadio == 1)
                ? Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetailBooking())));
                      },
                      child: Button(
                          color: Colors.green,
                          height: 40,
                          text: 'Submit',
                          width: 120),
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: 25,
            )
          ]),
    );
  }
}
