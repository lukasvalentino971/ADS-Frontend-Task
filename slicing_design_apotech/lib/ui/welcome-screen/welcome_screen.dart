import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome-screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ilustrasi-4.png'),
            SizedBox(height: 16),
            Text(
              'Welcome to Apotech',
              style: GoogleFonts.overpass(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Do you want some help with your health to get better life?',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle "Sign up with email" button press
              },
              style: ElevatedButton.styleFrom(
                primary: primaryColor, // Change to your desired color
                onPrimary: Colors.white, // Change to your desired color
                fixedSize: Size(311, 50),
                shadowColor: primaryColor, // Set shadow color to primaryColor
                elevation: 5, // Adjust the elevation (blur) of the shadow
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(
                //       8), // Adjust the border radius if needed
                // ),
              ),
              child: Text(
                'SIGN UP WITH EMAIL',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle "Sign up with email" button press
              },
              style: ElevatedButton.styleFrom(
                primary: whiteColor, // Change to white
                onPrimary: borderColor, // Change to your desired text color
                side: BorderSide(
                  color: borderColor
                      .withOpacity(0.10), // Add border color with opacity
                ),
                fixedSize: Size(311, 50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    height: 18, // Adjust the height as needed
                    width: 18, // Adjust the width as needed
                  ),
                  SizedBox(width: 15), // Adjust the spacing as needed
                  Opacity(
                    opacity: 0.75, // Set the opacity value
                    child: Text(
                      'CONTINUE WITH FACEBOOK',
                      style: GoogleFonts.overpass(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle "Sign up with email" button press
              },
              style: ElevatedButton.styleFrom(
                primary: whiteColor, // Change to white
                onPrimary: borderColor, // Change to your desired text color
                side: BorderSide(
                  color: borderColor
                      .withOpacity(0.10), // Add border color with opacity
                ),
                fixedSize: Size(311, 50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    height: 18, // Adjust the height as needed
                    width: 18, // Adjust the width as needed
                  ),
                  SizedBox(width: 15), // Adjust the spacing as needed
                  Opacity(
                    opacity: 0.75, // Set the opacity value
                    child: Text(
                      'CONTINUE WITH GMAIL',
                      style: GoogleFonts.overpass(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                // Navigate to LoginScreen
                Navigation.replaceNamed(routeName: LoginScreen.routeName);
              },
              child: Text(
                'LOGIN',
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  color: borderColor.withOpacity(0.45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
