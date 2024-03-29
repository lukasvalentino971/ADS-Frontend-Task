import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';
import 'package:slicing_design_apotech/common/navigation.dart';
import 'package:slicing_design_apotech/ui/cart-screen/cart_screen.dart';
import 'package:slicing_design_apotech/ui/cart-screen/cart_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const String routeName = '/productdetails-screen';

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class DotDecorator extends StatelessWidget {
  final Color color;

  DotDecorator({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/notification-new.svg',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    // Tambahkan fungsi yang dijalankan saat notifikasi diklik
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/cart-new.svg',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    // Tambahkan fungsi yang dijalankan saat keranjang belanja diklik
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sugar Free Gold Low Calories',
                  style: GoogleFonts.overpass(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                Text(
                  'Etiam mollis metus non purus ',
                  style: GoogleFonts.overpass(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: borderColor.withOpacity(0.20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: double.maxFinite,
                    height: 140,
                    decoration: BoxDecoration(
                      color: borderColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/omron.png',
                        width: 100, // Sesuaikan ukuran gambar sesuai kebutuhan
                        height: 100,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotDecorator(color: primaryColor),
                    SizedBox(width: 4),
                    DotDecorator(color: borderColor.withOpacity(0.20)),
                    SizedBox(width: 4),
                    DotDecorator(color: borderColor.withOpacity(0.20)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rp 56.000',
                          style: GoogleFonts.overpass(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: labelColor,
                          ),
                        ),
                        Text(
                          'Etiam mollis  ',
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: borderColor.withOpacity(0.20),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/plus-new.svg',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Add to Cart',
                            style: GoogleFonts.overpass(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 1,
                  color: borderColor.withOpacity(0.10),
                ),
                SizedBox(
                  height: 15,
                ),

                Text(
                  'Package size',
                  style: GoogleFonts.overpass(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      width: 79,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: packageColor),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp 252.000',
                            style: GoogleFonts.overpass(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: packageColor,
                            ),
                          ),
                          Text(
                            '500 pellets',
                            style: GoogleFonts.overpass(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: packageColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 79,
                      height: 68,
                      decoration: BoxDecoration(
                        color: borderColor.withOpacity(0.05),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp 110.000',
                            style: GoogleFonts.overpass(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '110 pellets',
                            style: GoogleFonts.overpass(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 79,
                      height: 68,
                      decoration: BoxDecoration(
                        color: borderColor.withOpacity(0.05),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rp 160.000',
                            style: GoogleFonts.overpass(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '300 pellets',
                            style: GoogleFonts.overpass(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Product Details',
                  style: GoogleFonts.overpass(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),

                Text(
                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                  style: GoogleFonts.overpass(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: borderColor.withOpacity(0.20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Rating and Reviews',
                  style: GoogleFonts.overpass(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: borderColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '4.4',
                                style: GoogleFonts.overpass(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 8),
                              SvgPicture.asset(
                                'assets/images/star.svg',
                                width: 26,
                                height: 26,
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  4), // Add some spacing between the ratings and the number
                          Text(
                            '923 Ratings',
                            style: GoogleFonts.overpass(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: borderColor.withOpacity(0.45),
                            ),
                          ),
                          Text(
                            'and 257 Reviews',
                            style: GoogleFonts.overpass(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: borderColor.withOpacity(0.45),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 1,
                            height: 90,
                            color: borderColor.withOpacity(
                                0.20), // You can adjust the color as needed
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '4',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/little-star.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 123.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Container(
                                          width: 90.0,
                                          height: 3.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '67 %',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/little-star.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 123.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Container(
                                          width: 28.0,
                                          height: 3.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '20 %',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '3',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/little-star.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 123.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '7 %',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/little-star.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 123.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '0 %',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/little-star.svg',
                                    width: 13,
                                    height: 13,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 123.0,
                                    height: 3.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: borderColor.withOpacity(0.10),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Container(
                                          width: 17.0,
                                          height: 3.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '20 %',
                                    style: GoogleFonts.overpass(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: borderColor.withOpacity(0.45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lorem Hoffman',
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: borderColor,
                          ),
                        ),
                        Text(
                          '05- oct 2023',
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: borderColor.withOpacity(0.45),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/little-star.svg',
                      width: 13,
                      height: 13,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.2',
                      style: GoogleFonts.overpass(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                  style: GoogleFonts.overpass(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: borderColor.withOpacity(0.20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 1,
                  color: borderColor.withOpacity(0.10),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ben Ipsum',
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: borderColor,
                          ),
                        ),
                        Text(
                          '09- oct 2023',
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: borderColor.withOpacity(0.45),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/little-star.svg',
                      width: 13,
                      height: 13,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.2',
                      style: GoogleFonts.overpass(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: borderColor.withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                  style: GoogleFonts.overpass(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: borderColor.withOpacity(0.20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigation.replaceNamed(routeName: CartScreen.routeName);
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
                    'GO TO CHART',
                    style: GoogleFonts.overpass(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Tambahkan widget lain sesuai kebutuhan di sini
              ],
            ),
          );
        },
      ),
    );
  }
}
