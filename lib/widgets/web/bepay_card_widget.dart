import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BepayCardWidget extends StatelessWidget {
  const BepayCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,

      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Image.asset('assets/sim.png', scale: 0.9),
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                SvgPicture.asset(
                  'assets/BepayLogo_simple.svg',
                  height: 30,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  "bepay",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Text(
              "Premium Card",
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
