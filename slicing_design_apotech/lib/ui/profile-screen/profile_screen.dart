import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/cart-screen/cart_screen.dart';
import 'package:slicing_design_apotech/ui/category-listing/category_listing.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';
import 'package:slicing_design_apotech/ui/login-screen/login_screen.dart';
import 'package:slicing_design_apotech/ui/notification-screen/notification_screen.dart';
import 'package:slicing_design_apotech/ui/welcome-screen/welcome_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'My Profile',
            style: GoogleFonts.overpass(
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
                Row(
                  children: [
                    Image.asset(
                      'assets/images/human.png',
                      width: 100, // Adjust width as needed
                      height: 100, // Adjust height as needed
                      // You can add more properties to customize the image widget
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Lorem Ipsum",
                          style: GoogleFonts.hankenGrotesk(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textNameColor),
                          ),
                        ),
                        Text(
                          "Welcome to Apotech",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.45)),
                          ),
                        ),
                      ],
                    ),

                    // Add other widgets or text as needed
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/priv.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Private Account",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: borderColor
                            .withOpacity(0.10), // Adjust color as needed
                        thickness: 1.0, // Adjust thickness as needed
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/my.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "My Consults",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: borderColor
                            .withOpacity(0.10), // Adjust color as needed
                        thickness: 1.0, // Adjust thickness as needed
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/order.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "My orders",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: borderColor
                            .withOpacity(0.10), // Adjust color as needed
                        thickness: 1.0, // Adjust thickness as needed
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/billing.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Billing",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: borderColor
                            .withOpacity(0.10), // Adjust color as needed
                        thickness: 1.0, // Adjust thickness as needed
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/faq.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Faq",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: borderColor
                            .withOpacity(0.10), // Adjust color as needed
                        thickness: 1.0, // Adjust thickness as needed
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/setting.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Settings",
                            style: GoogleFonts.hankenGrotesk(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: textNameColor.withOpacity(0.75),
                              ),
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            width: 24, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            // You can add more properties to customize the image widget
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Add more widgets or text as needed
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            // Navigate to the corresponding screen based on the tapped icon
            if (index == 4) {
              Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
            } else if (index == 3) {
              Navigator.pushNamed(context, CartScreen.routeName);
            } else if (index == 2) {
              Navigator.pushNamed(context, CategoryListingScreen.routeName);
            } else if (index == 1) {
              Navigator.pushNamed(context, NotificationScreen.routeName);
            } else if (index == 0) {
              Navigator.pushNamed(context, HomeScreen.routeName);
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              color: textNameColor.withOpacity(0.25),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/notification.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: buildPlusIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/basket.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              color: primaryColor,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget buildPlusIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: primaryColor, // Change color as needed
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/plus.svg',
          width: 24, // Adjust size as needed
          height: 24,
        ),
      ),
    );
  }
}
