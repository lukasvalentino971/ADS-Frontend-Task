import 'package:flutter/material.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart'; // Import the necessary package

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding-screen';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  List<PageViewModel> listPages = [
    PageViewModel(
      titleWidget: Text(
        "View and buy Medicine online",
        style: GoogleFonts.overpass(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bodyWidget: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Text(
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
          textAlign: TextAlign.center,
          style: GoogleFonts.overpass(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
      image: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Image.asset('assets/images/ilustrasi-1.png'),
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Online medical & Healthcare",
        style: GoogleFonts.overpass(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bodyWidget: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Text(
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
          textAlign: TextAlign.center,
          style: GoogleFonts.overpass(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
      image: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Image.asset('assets/images/ilustrasi-2.png'),
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Get Delivery on time",
        style: GoogleFonts.overpass(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      bodyWidget: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Text(
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
          textAlign: TextAlign.center,
          style: GoogleFonts.overpass(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
      image: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Image.asset('assets/images/ilustrasi-3.png'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 78),
        child: IntroductionScreen(
          key: introKey,
          pages: listPages,
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: GoogleFonts.overpass(fontSize: 14, color: Colors.grey),
          ),
          next: TextButton(
            onPressed: () {
              // Handle the "Next" button action
            },
            child: Text(
              'Next',
              style: GoogleFonts.overpass(
                color: primaryColor, // Change to your desired color
                fontSize: 14,
              ),
            ),
          ),
          done: Text(
            "Next",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: primaryColor,
            ),
          ),
          onDone: () {
            Navigation.replaceNamed(routeName: WelcomeScreen.routeName);
          },
          onSkip: () {
            introKey.currentState?.skipToEnd();
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(5.0),
            activeSize: const Size(5.0, 5.0),
            activeColor: primaryColor, // Change to your desired color
            color: Colors.grey, // Change to your desired color
            spacing: const EdgeInsets.symmetric(horizontal: 7.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
