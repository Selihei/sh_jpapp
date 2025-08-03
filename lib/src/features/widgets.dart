import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sh_jpapp/src/data/products_list.dart';
import 'package:google_fonts/google_fonts.dart';

class PillWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final int variant;

  const PillWidget({
    super.key,
    required this.text,
    this.isSelected = false,
    this.variant = 2,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xB3FFFFFF)
                : const Color(0x33FFFFFF),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: const Color(0x80FFFFFF)),
          ),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (variant == 1) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/icons/takeoutbag.and.cup.and.straw.png',
            width: 15,
            height: 15,
          ),
          const SizedBox(width: 6),
          const Text(
            "All categories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 6),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 20,
          ),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: isSelected ? Colors.black : Colors.white,
            fontSize: 15,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      );
    }
  }
}

class FoodCard extends StatelessWidget {
  final FoodItem item;

  const FoodCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 185,
        height: 350,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x4DFFFFFF), Color(0xFF908CF5), Color(0xFF8C5BEA)],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 15,
              top: 10,
              child: Image.asset(item.assetPath, width: 150, height: 150),
            ),
            Positioned(
              bottom: 65,
              left: 15,
              child: Text(
                item.title,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 50,
              child: Text(
                item.sectitle,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 20,
              child: Text(
                item.price,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 15,
              child: Row(
                children: [
                  Icon(Icons.favorite_outline, color: Colors.white24, size: 15),
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
          ],
        ),
      ),
    );
  }
}
