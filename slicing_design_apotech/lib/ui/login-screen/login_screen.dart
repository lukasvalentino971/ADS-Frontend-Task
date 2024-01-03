import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/register-screen/register_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController cUsername = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Tambahkan fungsi untuk kembali ke WelcomeScreen
              Navigation.replaceNamed(routeName: WelcomeScreen.routeName);
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
              'Welcome Back!',
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/username.png',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 8),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                height: 1,
                width: 311,
                color: borderColor.withOpacity(0.100),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/password.png',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 8),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                  Spacer(),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Forgot?',
                      style: TextStyle(
                        fontSize: 12,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                height: 1,
                width: 311,
                color: borderColor.withOpacity(0.100),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                //Navigation.replaceNamed(routeName: HomeScreen.routeName);
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
                'LOGIN',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk pindah ke halaman RegisterScreen
                  Navigation.replaceNamed(routeName: RegisterScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: borderColor.withOpacity(0.45),
                    ),
                    SizedBox(
                        width: 8), // Adjust the spacing between icon and text
                    Text(
                      "Don’t have an account? Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
