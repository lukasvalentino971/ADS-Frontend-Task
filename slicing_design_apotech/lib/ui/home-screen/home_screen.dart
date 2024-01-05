import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_design_apotech/ui/cart-screen/cart_screen.dart';
import 'package:slicing_design_apotech/ui/category-listing/category_listing.dart';
import 'package:slicing_design_apotech/ui/notification-screen/notification_screen.dart';
import 'package:slicing_design_apotech/ui/profile-screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
            ),
          ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(
                                    'assets/images/profile-fix.png', // Replace with the path to your raster image
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, CartScreen.routeName);
                                      },
                                      child: SvgPicture.asset(
                                        'assets/images/top-basket.svg',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            NotificationScreen.routeName);
                                      },
                                      child: SvgPicture.asset(
                                        'assets/images/top-notification.svg',
                                        width: 24,
                                        height: 24,
                                      ),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 24), // Adjust the top padding as needed
              child: SizedBox(
                height: 50.0,
                child: GestureDetector(
                  onTap: () {
                    // Handle search button press
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(56),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.25),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search,
                              color: Colors.black.withOpacity(0.30)),
                          const SizedBox(width: 20),
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
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
              child: topCategories(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 24),
              child: detailCategories(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              child: bannerApotech(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: textDeals(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 24),
              child: detailDeals(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 24),
              child: textFeatured(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 24),
              child: detailCompany(),
            ),
          ),
        ],
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
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/home.svg'),
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
            icon: SvgPicture.asset('assets/images/profile.svg'),
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

  Positioned detailCompany() {
    return Positioned(
      // Sesuaikan dengan posisi yang diinginkan
      top: 0,
      left: 0,
      right: 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            imageWithLabel('assets/images/1.png', 'Himalaya Wellness',
                spacing: 1.0),
            imageWithLabel('assets/images/2.png', 'Accu-Chek', spacing: 1.0),
            imageWithLabel('assets/images/3.png', 'Vlcc', spacing: 1.0),
            imageWithLabel('assets/images/4.png', 'Protinex', spacing: 1.0),
          ],
        ),
      ),
    );
  }

  Widget imageWithLabel(String imagePath, String label,
      {double spacing = 8.0}) {
    return Padding(
      padding: EdgeInsets.all(spacing),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100, // Sesuaikan ukuran gambar sesuai kebutuhan
            height: 100,
          ),
          SizedBox(height: spacing),
          Text(label),
        ],
      ),
    );
  }

  Positioned detailDeals() {
    return Positioned(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 180.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 14.0,
                    spreadRadius: 1.0,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 180.0,
                    height: 154.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/images/obat-1.png',
                      width: 120.0,
                      height: 120.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 170, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Accu-check Active Test Strip',
                          style: GoogleFonts.overpass(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rp 112.000',
                          style: GoogleFonts.overpass(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 210,
                    right: 0,
                    child: Container(
                      width: 48,
                      height: 24,
                      decoration: BoxDecoration(
                        color: ratingColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: whiteColor,
                            size: 13,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '4.2',
                            style: TextStyle(
                              fontSize: 13,
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

            SizedBox(width: 16.0),
            Container(
              width: 180.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 180.0,
                    height: 154.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/images/obat-2.png',
                      width: 120.0,
                      height: 120.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 170, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omron HEM-8712 BP Monitor',
                          style: GoogleFonts.overpass(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rp 150.000',
                          style: GoogleFonts.overpass(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 210,
                    right: 0,
                    child: Container(
                      width: 48,
                      height: 24,
                      decoration: BoxDecoration(
                        color: ratingColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: whiteColor,
                            size: 13,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '4.2',
                            style: TextStyle(
                              fontSize: 13,
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
            // Add more containers or elements as needed
          ],
        ),
      ),
    );
  }

  Positioned textDeals(BuildContext context) {
    return Positioned(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Deals of The Day",
            style: GoogleFonts.overpass(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black, // Sesuaikan warna dengan kebutuhan Anda
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke CategoryListingScreen.routename saat "More" diklik
              // Navigator.pushNamed(context, CategoryListingScreen.routeName);
            },
            child: Text(
              "More",
              style: GoogleFonts.overpass(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: primaryColor, // Sesuaikan warna dengan kebutuhan Anda
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned textFeatured() {
    return Positioned(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Featured Brands",
            style: GoogleFonts.overpass(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: borderColor,
            ),
          ),
        ],
      ),
    );
  }

  Positioned bannerApotech(BuildContext context) {
    return Positioned(
      top: 470.0, // Adjust as needed for vertical placement
      left: 16.0,
      child: Image.asset(
        'assets/images/banner.png',
        width: MediaQuery.of(context).size.width - 32,
        // Set the width of the banner to be the full width of the screen
        fit: BoxFit.cover,
      ),
    );
  }

  Positioned detailCategories() {
    return Positioned(
      top: 350.0, // Adjust as needed for vertical placement
      left: 16.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Container(
              width: 64,
              height: 98,
              margin: EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: whiteColor, // Set your desired color
                boxShadow: [
                  BoxShadow(
                    color:
                        primaryColor.withOpacity(0.20), // Set your shadow color
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    index == 0
                        ? 'assets/images/dental.png'
                        : index == 1
                            ? 'assets/images/wellness.png'
                            : index == 2
                                ? 'assets/images/homeo.png'
                                : index == 3
                                    ? 'assets/images/eyecare.png'
                                    : 'assets/images/skin.png',
                    width: 40,
                    height: 40,
                    // Adjust width and height based on your image size preference
                  ),
                  SizedBox(height: 8),
                  Text(
                    index == 0
                        ? 'Dental'
                        : index == 1
                            ? 'Wellness'
                            : index == 2
                                ? 'Homeo'
                                : index == 3
                                    ? 'Eye Care'
                                    : 'Skin & Hair',
                    style: GoogleFonts.overpass(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned topCategories() {
    return Positioned(
      top: 310.0, // Adjust as needed for vertical placement
      left: 16.0,
      child: Text(
        "Top Categories",
        style: GoogleFonts.overpass(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: borderColor,
        ),
      ),
    );
  }

  // Positioned searchButton() {
  //   return Positioned(
  //     top: 100.0, // Adjust as needed for vertical placement
  //     left: 16.0,
  //     right: 16.0,
  //     child: SizedBox(
  //       height: 50.0,
  //       child: ElevatedButton(
  //         onPressed: () {
  //           // Handle search button press
  //         },
  //         style: ElevatedButton.styleFrom(
  //           primary: whiteColor,
  //           onPrimary: Colors.white,
  //           fixedSize: Size(double.maxFinite, 50),
  //           shadowColor: primaryColor
  //               .withOpacity(0.25), // Add shadow with specified color
  //           elevation: 5, // Set elevation for shadow
  //           padding: const EdgeInsets.symmetric(
  //               horizontal: 16.0), // Adjust padding for icon
  //         ),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Icon(Icons.search, color: Colors.black.withOpacity(0.30)),
  //             const SizedBox(width: 20), // Add spacing between icon and text
  //             Text(
  //               'Search Medicine & Healthcare products',
  //               style: GoogleFonts.overpass(
  //                 fontSize: 13,
  //                 fontWeight: FontWeight.w700,
  //                 color: borderColor.withOpacity(0.30),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
