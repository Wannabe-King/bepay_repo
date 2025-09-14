import 'package:flutter/material.dart';

class MobileActionButtons extends StatelessWidget {
  const MobileActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionButton("Send", Icons.send_outlined),
          _buildActionButton("Receive", Icons.call_received_outlined),
          _buildActionButton("Pay Link", Icons.link_outlined),
          _buildActionButton("Cash Out", Icons.account_balance_wallet_outlined),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
      ],
    );
  }
}
