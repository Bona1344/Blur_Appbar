import 'dart:ui';

import 'package:flutter/material.dart';

class BlurryAppbar extends SliverPersistentHeaderDelegate {
  final double blurStrength;
  final Function(double) onScroll;

  const BlurryAppbar({required this.blurStrength, required this.onScroll})
      : super();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // Add your implementation here

    final blurValue = blurStrength * shrinkOffset / 100.0; // Adjust as needed

    // Notify the parent about the current blur strength
    onScroll(blurValue);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.2),
          ),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
          child: Container(
            color: Colors.red.shade800.withOpacity(0.00001),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 150; // Adjust as needed

  @override
  double get minExtent => 50; // Adjust as needed

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
