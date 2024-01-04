import 'package:flutter/material.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';
import 'package:slicing_design_apotech/ui/login-success/login_success.dart';
import 'package:slicing_design_apotech/ui/register-screen/register_screen.dart';
import 'package:slicing_design_apotech/ui/verify-otp/verify_otp.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';
import './ui/onboarding-screen/onboarding_screen.dart';
import './ui/splash-screen/splash_screen.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apotech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        VerifyScreen.routeName: (context) => VerifyScreen(),
        LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      navigatorKey: navigatorKey,
    );
  }
}
