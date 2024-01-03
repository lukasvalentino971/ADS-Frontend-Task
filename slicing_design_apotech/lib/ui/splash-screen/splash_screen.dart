import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../onboarding-screen/onboarding_screen.dart';
import 'package:slicing_design_apotech/common/navigation.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigation.replaceNamed(routeName: OnboardingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo dengan shadow
            Container(
              width: 74.0,
              height: 74.0,
              child: Image.asset('assets/images/logo-apotech.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Apotech',
              style: GoogleFonts.sofiaSans(
                fontSize: 28.0,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
