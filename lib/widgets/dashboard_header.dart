import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Dashboard Title
        const Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 24),

        // Search Box
        Expanded(
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  "Search for anything",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 24),

        // Sandbox Toggle
        Row(
          children: [
            const Text("Sandbox", style: TextStyle(color: Colors.white)),
            const SizedBox(width: 8),
            Switch(value: true, onChanged: (_) {}, activeColor: Colors.white),
          ],
        ),
        const SizedBox(width: 24),

        // Notification Icon
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: const Icon(Icons.notifications_outlined, color: Colors.white),
        ),
        const SizedBox(width: 16),

        // Withdraw Button
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.upload_outlined, color: Colors.black),
          label: const Text(
            "Withdraw",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
