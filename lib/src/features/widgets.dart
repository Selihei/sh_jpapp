import 'dart:ui';
import 'package:flutter/material.dart';
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
         Image.asset('assets/images/icons/takeoutbag.and.cup.and.straw.png',
         width: 15,
         height: 15,) ,
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
          const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20),
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: isSelected
             ? Colors.black
             : Colors.white,
            fontSize: 15,
            fontWeight: isSelected
             ? FontWeight.bold
             : FontWeight.w500,
          ),
        ),
      );
    }
  }
}


//Pill Widget
//Button Widget
//Maybe Card Widget