import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:weather_app/pages/home.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 380),
            Text(
                'The Weather',
              style: GoogleFonts.shojumaru(fontSize: 40),
            ),
            Spacer(),
            RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Created By ', style: GoogleFonts.abhayaLibre(color: Colors.black, fontSize: 20)),
                    TextSpan(text: 'Talha Ayyaz', style: GoogleFonts.chakraPetch(color: Colors.black, fontSize: 20))
                  ]
                )
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}