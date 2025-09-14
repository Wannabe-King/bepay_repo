import 'package:flutter/material.dart';

class LoyaltyCardWidget extends StatelessWidget {
  final String imageUrl;
  final Color color;
  final String title;
  final String subtitle;

  const LoyaltyCardWidget({
    super.key,
    required this.imageUrl,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 0.2,
            blurRadius: 4,
            offset: const Offset(-2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(imageUrl),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey[400]),
          ),
        ],
      ),
      // child: Row(
      //   children: [
      //     ClipRRect(
      //       borderRadius: const BorderRadius.only(
      //         topLeft: Radius.circular(16),
      //         bottomLeft: Radius.circular(16),
      //       ),
      //       child: SizedBox(
      //         width: 100,
      //         height: double.infinity,
      //         child: Image.network(imageUrl, fit: BoxFit.cover),
      //       ),
      //     ),
      //     Expanded(
      //       child: Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               title,
      //               style: const TextStyle(
      //                 fontSize: 14,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             const SizedBox(height: 4),
      //             Text(
      //               subtitle,
      //               style: TextStyle(fontSize: 12, color: Colors.grey[400]),
      //             ),
      //             const SizedBox(height: 8),
      //             Row(
      //               children: [
      //                 Text(
      //                   "Details",
      //                   style: TextStyle(
      //                     fontSize: 12,
      //                     color: color,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 const SizedBox(width: 4),
      //                 Icon(Icons.arrow_forward, color: color, size: 12),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
