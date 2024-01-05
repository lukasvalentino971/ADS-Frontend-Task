import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/product-detail/product_details.dart';

class CategoryListingScreen extends StatefulWidget {
  static const String routeName = '/categorylisting-screen';

  const CategoryListingScreen({Key? key}) : super(key: key);

  @override
  State<CategoryListingScreen> createState() => _CategoryListingScreenState();
}

// CustomClipper untuk membuat segitiga
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, size.height); // Pindah ke sudut kanan bawah
    path.lineTo(size.width, 0); // Garis ke sudut kanan atas
    path.lineTo(0, size.height); // Garis ke sudut kiri bawah
    path.close(); // Penutupan path membentuk segitiga
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _CategoryListingScreenState extends State<CategoryListingScreen> {
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
          "Diabetes Care",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1, // Adjust the itemCount as needed
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/banner-fix.png',
                    width: 400,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between image and text
                Text(
                  "Diabetic Diet",
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between text and row

                // Row containing three containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildImageContainer(
                        'assets/images/diabet-1.png', 'Sugar Substitute'),
                    SizedBox(width: 20),
                    _buildImageContainer(
                        'assets/images/diabet-1.png', 'Juices & Vinegars'),
                    SizedBox(width: 20),
                    _buildImageContainer(
                        'assets/images/diabet-3.png', 'Vitamins Medicines'),
                  ],
                ),
                SizedBox(height: 20), // Add spacing between image and text
                Text(
                  "All Products",
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                SizedBox(height: 20),
                detailDeals(),

                // Add other widgets/components here as needed
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildImageContainer(String imagePath, String label) {
    return Container(
      width: 100,
      height: 162,
      decoration: BoxDecoration(
        color: backgroundPicture,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100, // Set the height of the ListView
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20), // Set margin as needed
            child: Text(
              label,
              style: TextStyle(
                color: borderColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned detailDeals() {
    return Positioned(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: whiteColor,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // ClipPath(
                      //   clipper:
                      //       TriangleClipper(), // CustomClipper untuk membuat segitiga
                      //   child: Container(
                      //     width: 57.5,
                      //     height: 57.5,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.only(
                      //         topRight: Radius.circular(10.0),
                      //       ),
                      //       color: dangerColor, // Warna segitiga
                      //     ),
                      //   ),
                      // ),
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
                          'assets/images/accu.png',
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
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    // Fungsi yang dijalankan saat container diklik
                    Navigator.pushNamed(
                        context, ProductDetailsScreen.routeName);
                  },
                  child: Container(
                    width: 160.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: whiteColor,
                      border: Border.all(
                        color: borderColor.withOpacity(0.10),
                        width: 1.0,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        // ... Bagian-bagian container yang lain ...
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
                            'assets/images/omron.png',
                            width: 120.0,
                            height: 120.0,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 170, left: 16, right: 16),
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
                ),

                // Add more containers or elements as needed
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: whiteColor,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
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
                          'assets/images/acci.png',
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
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 160.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: whiteColor,
                    border: Border.all(
                      color: borderColor.withOpacity(0.10),
                      width: 1.0,
                    ),
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
                          'assets/images/omrin.png',
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
        ],
      ),
    );
  }
}
