import 'package:flutter/material.dart';

class SplashScreenP extends StatelessWidget {

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