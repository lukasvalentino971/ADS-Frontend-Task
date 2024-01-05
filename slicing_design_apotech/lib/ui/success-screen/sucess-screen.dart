import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class SuccessScreen extends StatefulWidget {
  static const String routeName = '/success-screen';

  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Image.asset('assets/images/verified.png'),
            SizedBox(height: 50),
            Text(
              'Thank you',
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: borderColor.withOpacity(0.45),
                  ),
                  children: [
                    TextSpan(
                      text: 'Your Order will be delivered with invoice ',
                    ),
                    TextSpan(
                      text: '#INV20231212',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: borderColor),
                    ),
                    TextSpan(
                      text:
                          '. You can track the delivery in the order section.',
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigation.replaceNamed(routeName: HomeScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                primary: primaryColor, // Change to your desired color
                onPrimary: Colors.white, // Change to your desired color
                fixedSize: Size(double.maxFinite, 50),
                shadowColor: primaryColor, // Set shadow color to primaryColor
                elevation: 5, // Adjust the elevation (blur) of the shadow
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(
                //       8), // Adjust the border radius if needed
                // ),
              ),
              child: Text(
                'Continue Order',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
