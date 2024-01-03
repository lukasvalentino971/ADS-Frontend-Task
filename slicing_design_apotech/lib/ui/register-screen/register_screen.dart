import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController cUsername = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController cMobileNumber = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  bool isYourNameVisible = false;

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
              Navigation.replaceNamed(routeName: LoginScreen.routeName);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Create your account',
              style: GoogleFonts.overpass(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: cUsername,
                          cursorColor: primaryColor,
                          decoration: InputDecoration(
                            label: labelText(),
                            hintText: 'Yourname',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: borderColor.withOpacity(0.20),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            // Atur warna kursor di sini
                            // Tambahkan dekorasi atau atribut lain sesuai kebutuhan desain Anda
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: cPassword,
                          cursorColor: primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: borderColor.withOpacity(0.20),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            // Atur warna kursor di sini
                            // Tambahkan dekorasi atau atribut lain sesuai kebutuhan desain Anda
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: cEmail,
                          cursorColor: primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: borderColor.withOpacity(0.20),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            // Atur warna kursor di sini
                            // Tambahkan dekorasi atau atribut lain sesuai kebutuhan desain Anda
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Opacity(
                    opacity: 0.45,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: cPassword,
                          cursorColor: primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: borderColor.withOpacity(0.20),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            // Atur warna kursor di sini
                            // Tambahkan dekorasi atau atribut lain sesuai kebutuhan desain Anda
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
              ),
              child: Text(
                'CREATE ACCOUNT',
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                "Don’t have an account? Sign Up",
                style: TextStyle(
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

  Padding labelText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        children: [
          SizedBox(width: 8),
          Opacity(
            opacity: 0.45,
            child: Text(
              'Yourname',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: borderColor.withOpacity(0.45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
