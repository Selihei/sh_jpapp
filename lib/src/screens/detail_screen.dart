import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sh_jpapp/src/data/products_list.dart';

class FoodDetailScreen extends StatelessWidget {
  final FoodItem item;

  const FoodDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: 500,
              height: 90,
              child: Image.asset(
                'assets/images/bg/detail_bg.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 70,
            child: Container(
              height: 1000,
              width: 500,
              color: Color(0xFF2F2B22),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(width: 500, height: 90, color: Color(0x4D2F2B22)),
          ),
          Positioned(
            top: 0,
            right: -20,
            child: Image.asset(item.assetPath, width: 450, height: 450),
          ),
          Positioned(
            top: 90,
            right: 20,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.close, size: 20, color: Colors.grey),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Positioned(
            top: 325,
            left: 30,
            right: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 550,
                  height: 355,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Color(0x03FFFFFF),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0x26FFFFFF)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 5,
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.white54,
                              size: 15,
                            ),
                            Text(
                              " " + item.likes,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 80,
                        child: Text(
                          item.title,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam",
                            style: GoogleFonts.inter(color: Colors.white70),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 120,
                        child: Text(
                          item.price,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 85,
                        left: 0,
                        child: Container(
                          width: 300,
                          height: 2,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: 300,
                          height: 60,
                          child: Image.asset(
                            "assets/images/icons/ingriendents.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF424445),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Small',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  color: Color(0xFF424445),
                  child: const Text(
                    'Medium',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF636563),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Large',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 140,
            right: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: Icon(Icons.remove, color: Colors.grey, size: 20),
                ),
                const SizedBox(width: 10),
                Text(
                  '1',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: Icon(Icons.add, color: Colors.grey, size: 20),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 35,
            child: Container(
              width: 350,
              height: 50,
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      color: Color(0xFFFFACE4),
                      blurRadius: 1,
                      offset: Offset(3, -3),
                    ),
                    BoxShadow(
                      blurStyle: BlurStyle.inner,
                      color: Color(0xFF9375B6),
                      blurRadius: 5,
                      offset: Offset(-1, 2),
                    ),
                    BoxShadow(
                      //unterer Shadow
                      color: Color(0x80EA71C5),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: Offset(2.4, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(13),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Add to Order for ${item.price}',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
