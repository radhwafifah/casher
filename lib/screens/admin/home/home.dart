import 'package:flutter/material.dart';

import '../auth/login/login.dart';
import '../data_barang/data_barang.dart';
import '../data_member/data_member.dart';
import '../kelola_petugas/kelola_petugas.dart';
import '../laporan_transaksi/laporan_transaksi.dart';

class Home extends StatelessWidget {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaPetugas()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Kelola Petugas',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PendataanBarang()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Pendataan Barang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LaporanTransaksi()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DataMember()));
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Data Member',
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
