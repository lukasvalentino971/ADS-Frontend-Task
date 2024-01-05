import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/ui/success-screen/sucess-screen.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = '/notification-screen';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
          "Notification",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Implement your clear all logic here
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                "Clear All",
                style: TextStyle(
                  color: primaryColor, // Change color as needed
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Divider(
            color: borderColor.withOpacity(0.10),
            height: 1,
          ),
          preferredSize: Size.fromHeight(1),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/not1.svg',
                          width: 16,
                          height: 22.4,
                          color: borderColor.withOpacity(0.45),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "We know that — for children AND adults — learning is most effective when it is",
                                  style: GoogleFonts.hankenGrotesk(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Aug 12, 2023 at 12:08 PM",
                                  style: GoogleFonts.overpass(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: borderColor.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: borderColor.withOpacity(0.10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/not2.svg',
                          width: 16,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The future of professional learning is immersive, communal experiences for ",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Aug 12, 2023 at 12:08 PM",
                                  style: GoogleFonts.overpass(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: borderColor.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: borderColor.withOpacity(0.10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/not3.svg',
                          width: 16,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "With this in mind, Global Online Academy created the Blended Learning Design ",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Aug 12, 2023 at 12:08 PM",
                                  style: GoogleFonts.overpass(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: borderColor.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: borderColor.withOpacity(0.10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/not3.svg',
                          width: 16,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Technology should serve, not drive, pedagogy. Schools often discuss ",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Aug 12, 2023 at 12:08 PM",
                                  style: GoogleFonts.overpass(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: borderColor.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: borderColor.withOpacity(0.10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/not3.svg',
                          width: 16,
                          height: 16,
                          color: borderColor.withOpacity(0.45),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Peer learning works. By building robust personal learning communities both  ",
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Aug 12, 2023 at 12:08 PM",
                                  style: GoogleFonts.overpass(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: borderColor.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
