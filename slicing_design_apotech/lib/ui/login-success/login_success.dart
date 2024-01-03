import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class LoginSuccessScreen extends StatefulWidget {
  static const String routeName = '/loginsuccess-screen';

  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
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
              'Phone Number Verified',
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Congratulations, your phone number has been verified. You can start using the app',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: borderColor.withOpacity(0.45),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigation.replaceNamed(routeName: WelcomeScreen.routeName);
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
                'CONTINUE',
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
