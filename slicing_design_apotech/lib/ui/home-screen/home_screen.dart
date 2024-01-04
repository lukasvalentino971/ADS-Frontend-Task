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
      body: CustomScrollView(
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
                      top: 100, // Adjust as needed for vertical placement
                      right: 200, // Adjust as needed for horizontal placement
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
                        child: Row(
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/avatar.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/basket.png',
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/images/notification.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
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
    );
  }
}
