import 'package:flutter/material.dart';

class SplashScreen extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF64677A),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo_casher.png',
              width: 378,
              height: 378,
            ),
          ],
        ),
      ),
    );
  }
}