import 'package:flutter/material.dart';

import '../../home/home.dart';
import '../login/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'DAFTAR',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF777777)),
                    ),
                    const SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Masukkan email",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xFFB4B4B4)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)),
                        )),
                    SizedBox(height: 20.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Nama",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF777777)),
                          ),
                          const SizedBox(height: 8),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Masukkan nama",
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Color(0xFFB4B4B4)),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 17)),
                              )),
                          SizedBox(height: 20.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF777777)),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Masukkan password",
                                        hintStyle: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFFB4B4B4)),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 17)),
                                  )),
                              SizedBox(height: 20.0),
                              Container(
                                  width: double.infinity,
                                  height: 48,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: Color(0xFF64677A),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                    },
                                    child: Text(
                                      "Daftar",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  )),
                              SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Sudah punya akun ? ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                    },
                                    child: const Text(
                                      "Masuk",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.blue),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ]),
                  ])
            ])));
  }
}
