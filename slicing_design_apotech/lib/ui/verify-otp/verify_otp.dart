import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/login-success/login_success.dart';
import 'package:slicing_design_apotech/ui/register-screen/register_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class VerifyScreen extends StatefulWidget {
  static const String routeName = '/verify-screen';

  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Tambahkan fungsi untuk kembali ke RegisterScreen
              Navigation.replaceNamed(routeName: RegisterScreen.routeName);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter the verify code',
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'We just send you a verification code via phone          +62 821 39 488 953',
              style: GoogleFonts.overpass(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: borderColor.withOpacity(0.45),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    '${'0'}', // Display the index as the digit (0 to 6)
                    style: GoogleFonts.overpass(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: borderColor.withOpacity(
                          0.25), // Use the same color as the box decoration
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 1,
              color: borderColor.withOpacity(0.1),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigation.replaceNamed(
                      routeName: LoginSuccessScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  primary: primaryColor, // Change to your desired color
                  onPrimary: Colors.white, // Change to your desired color
                  fixedSize: Size(double.maxFinite, 50),
                  shadowColor: primaryColor, // Set shadow color to primaryColor
                  elevation: 5, // Adjust the elevation (blur) of the shadow
                ),
                child: Text(
                  'SUBMIT CODE',
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'The verify code will expire in 00:59',
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: borderColor.withOpacity(0.45),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'Resend Code',
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
