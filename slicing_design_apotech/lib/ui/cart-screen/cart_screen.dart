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
        itemBuilder: (BuildContext context, int index) {
          // Add a condition to check the index and display text accordingly
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Row(
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
                  SvgPicture.asset(
                    'assets/images/plus-blue.svg',
                    width: 24,
                    height: 24,
                    color: primaryColor,
                  ),
                ],
              ),
            );
          }
          // You can continue with other widgets or items in your list
          // For example, return your product details widget for other indices.
          // Replace with your actual product details widget
        },
      ),
    );
  }
}
