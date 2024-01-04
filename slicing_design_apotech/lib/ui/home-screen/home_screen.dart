import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 215.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          color: primaryColor,
                        ),
                        // Add the circle here
                        Positioned(
                          top: 80,
                          right: 180,
                          child: Container(
                            width: 412,
                            height: 412,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ),
                        // Add avatar, basket icon, and notification icon
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 24),
                          child: Positioned(
                            top: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/profile-fix.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/notification.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                        SizedBox(width: 20),
                                        Image.asset(
                                          'assets/images/basket.png',
                                          width: 24,
                                          height: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Hi, Lorem",
                                  style: GoogleFonts.overpass(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Welcome to Apotech",
                                  style: GoogleFonts.overpass(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Add other slivers/content below as needed
            ],
          ),
          Positioned(
            top: 230.0, // Adjust as needed for vertical placement
            left: 16.0,
            right: 16.0,
            child: SizedBox(
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  // Handle search button press
                },
                style: ElevatedButton.styleFrom(
                  primary: whiteColor,
                  onPrimary: Colors.white,
                  fixedSize: Size(double.maxFinite, 50),
                  shadowColor: Colors.black
                      .withOpacity(0.25), // Add shadow with specified color
                  elevation: 6, // Set elevation for shadow
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0), // Adjust padding for icon
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search, color: Colors.black.withOpacity(0.30)),
                    const SizedBox(
                        width: 20), // Add spacing between icon and text
                    Text(
                      'Search Medicine & Healthcare products',
                      style: GoogleFonts.overpass(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: borderColor.withOpacity(0.30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
