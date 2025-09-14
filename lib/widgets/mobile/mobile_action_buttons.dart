import 'package:bepay/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MobileActionButtons extends StatelessWidget {
  const MobileActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildActionButton("Send", 'assets/send_icon.png'),
          _buildActionButton("Receive", 'assets/recive_icon.png'),
          _buildActionButton("Pay Link", 'assets/pay_link_icon.png'),
          _buildActionButton("Cash Out", 'assets/swap_icon.png'),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, String img) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.secondary, AppColors.primary],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(img),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.black, fontSize: 12)),
      ],
    );
  }
}
