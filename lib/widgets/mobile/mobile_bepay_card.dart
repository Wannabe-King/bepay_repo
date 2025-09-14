import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MobileBepayCard extends StatelessWidget {
  const MobileBepayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Logo and card details
          Positioned(left: 16, top: 16, child: Image.asset('assets/sim.png')),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/BepayLogo.svg'),
                    const SizedBox(width: 16),
                    const Text(
                      "bepay",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),

          // Premium card label
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
