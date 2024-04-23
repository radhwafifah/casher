import 'package:casher_lagi/screens/petugas/kelola_member/kelola_member.dart';
import 'package:casher_lagi/screens/petugas/laporan_transaksi/laporan_transaksi.dart';
import 'package:flutter/material.dart';

import '../login_petugas/login_petugas.dart';

class HomePetugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CASH-ER',
            style: TextStyle(color: Colors.grey),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout, color: Colors.black,),
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPetugas()));
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaPetugas()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Transaksi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => PendataanBarang()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Lihat Data Barang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LaporanTransaksiP()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Laporan Transaksi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaMember()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Kelola Member',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
