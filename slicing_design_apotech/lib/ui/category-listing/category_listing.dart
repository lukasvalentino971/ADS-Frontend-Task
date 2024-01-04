import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/home-screen/home_screen.dart';

class CategoryListingScreen extends StatefulWidget {
  static const String routeName = '/categorylisting-screen';

  const CategoryListingScreen({Key? key}) : super(key: key);

  @override
  State<CategoryListingScreen> createState() => _CategoryListingScreenState();
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
                SizedBox(height: 10), // Add spacing between image and text
                Text(
                  "Diabetic Diet",
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                SizedBox(height: 10), // Add spacing between text and row

                // Row containing three containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildImageContainer(
                        'assets/images/diabet-1.png', 'Label 1'),
                    _buildImageContainer(
                        'assets/images/diabet-2.png', 'Label 2'),
                    _buildImageContainer(
                        'assets/images/diabet-3.png', 'Label 3'),
                  ],
                ),
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
      width: 110,
      height: 162,
      decoration: BoxDecoration(
        color: backgroundPicture,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              imagePath,
              width: 110,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: borderColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
