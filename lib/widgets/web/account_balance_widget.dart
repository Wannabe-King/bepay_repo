import 'package:bepay/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AccountBalanceWidget extends StatelessWidget {
  const AccountBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Arshi's Wallets balance",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.account_balance_wallet,
              size: 16,
              color: Colors.black54,
            ),
            const SizedBox(width: 8),
            const Icon(Icons.visibility, size: 16, color: Colors.black54),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "\$ 6,53,877.09",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 130,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Today",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 8,
                height: 8,
              ),
              const SizedBox(width: 8),
              const Text(
                "+\$2.56",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),

        // Action Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildActionButton("Send", 'assets/send_icon.png'),
            _buildActionButton("Receive", 'assets/recive_icon.png'),
            _buildActionButton("Pay Link", 'assets/pay_link_icon.png'),
            _buildActionButton("Swap", 'assets/swap_icon.png'),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton(String label, String img) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColors.primary,
        border: Border.all(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
            colors: [AppColors.secondary, AppColors.primary],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
            const SizedBox(width: 8),
            Image.asset(img),
          ],
        ),
      ),
    );
  }
}
