import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/ui/success-screen/sucess-screen.dart';

class CheckOutScreen extends StatefulWidget {
  static const String routeName = '/checkout-screen';

  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 Items in your cart",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: borderColor.withOpacity(0.45)),
                          ),
                        ),
                        Text(
                          "TOTAL",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: borderColor.withOpacity(0.45)),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Rp 185.000",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: borderColor),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Delivery Address",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: borderColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 93,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/images/active-button.svg',
                          width: 24,
                          height: 24,
                          color: primaryColor,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          // Use an Expanded widget to make the text take available space
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Home",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "(205) 555-024",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                  ),
                                ),
                                Text(
                                  "1786 Wheeler Bridge",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/images/pen.svg',
                          width: 12.8,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 93,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/images/nonactive-button.svg',
                          width: 24,
                          height: 24,
                          color: primaryColor,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          // Use an Expanded widget to make the text take available space
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Office",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "(205) 555-024",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                  ),
                                ),
                                Text(
                                  "1786 w Dallas St underfield",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/images/pen.svg',
                          width: 12.8,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/images/plus-blue.svg',
                      width: 24,
                      height: 24,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add Address",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: primaryColor),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Payment Methods",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: borderColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 252,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: borderColor.withOpacity(0.10),
                                  width: 1.0,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/credit.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Credit Card",
                                style: GoogleFonts.overpass(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: borderColor,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/images/active-button.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: borderColor.withOpacity(0.10),
                                  width: 1.0,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/paypal.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Paypal",
                                style: GoogleFonts.overpass(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: borderColor,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/images/nonactive-button.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: borderColor.withOpacity(0.10),
                                  width: 1.0,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/google-play.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Google Pay",
                                style: GoogleFonts.overpass(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: borderColor,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/images/nonactive-button.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: borderColor.withOpacity(0.10),
                                  width: 1.0,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/apple.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Apple Pay",
                                style: GoogleFonts.overpass(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: borderColor,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/images/nonactive-button.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigation.replaceNamed(routeName: SuccessScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor, // Change to your desired color
                    onPrimary: Colors.white, // Change to your desired color
                    fixedSize: Size(double.maxFinite, 50),
                    shadowColor:
                        primaryColor, // Set shadow color to primaryColor
                    elevation: 5, // Adjust the elevation (blur) of the shadow
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(
                    //       8), // Adjust the border radius if needed
                    // ),
                  ),
                  child: Text(
                    'Pay Now Rp 185.000',
                    style: GoogleFonts.overpass(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
