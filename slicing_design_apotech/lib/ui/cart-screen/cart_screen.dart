import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/ui/product-detail/product_details.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart-screen';

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

// CustomClipper untuk membuat segiti

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        title: Text(
          "Your Cart",
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
                    Row(
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
                          "Add More",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ClipRect(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // You can adjust the border radius as needed
                        child: Image.asset(
                          'assets/images/botol-1.png',
                          width: 70,
                          height: 80,
                          fit: BoxFit
                              .cover, // Adjust the BoxFit based on your needs
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Sugar Free Gold",
                            style: GoogleFonts.overpass(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: borderColor),
                            ),
                          ),
                        ),
                        Text(
                          "bottle of 500 pellets",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: borderColor.withOpacity(0.45)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rp 25.000",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: borderColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/images/close.svg',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 95,
                          height: 32,
                          decoration: BoxDecoration(
                            color: backgroundButtonColor,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Pink circle with minus icon
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: backgroundMinus,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/tanda-minus.svg',
                                    width: 16,
                                    height: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Pink circle with plus icon
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: backgroundPlus,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/tanda-plus.svg',
                                    width: 16,
                                    height: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // lengkapi kode disini
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 1,
                  color: borderColor.withOpacity(0.10),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ClipRect(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8.0), // You can adjust the border radius as needed
                        child: Image.asset(
                          'assets/images/botol-2.png',
                          width: 70,
                          height: 80,
                          fit: BoxFit
                              .cover, // Adjust the BoxFit based on your needs
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Sugar Free Gold",
                            style: GoogleFonts.overpass(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: borderColor),
                            ),
                          ),
                        ),
                        Text(
                          "bottle of 500 pellets",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: borderColor.withOpacity(0.45)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rp 25.000",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: borderColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/images/close.svg',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 95,
                          height: 32,
                          decoration: BoxDecoration(
                            color: backgroundButtonColor,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Pink circle with minus icon
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: backgroundMinus,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/tanda-minus.svg',
                                    width: 16,
                                    height: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Pink circle with plus icon
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: backgroundPlus,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/tanda-plus.svg',
                                    width: 16,
                                    height: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // lengkapi kode disini
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
