import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_apotech/common/styles.dart';

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
                    color: borderColor.withOpacity(0.45),
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

                // Tambahkan widget lain sesuai kebutuhan di sini
              ],
            ),
          );
        },
      ),
    );
  }
}
