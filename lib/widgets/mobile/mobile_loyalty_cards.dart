import 'package:flutter/material.dart';

class MobileLoyaltyCards extends StatelessWidget {
  const MobileLoyaltyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          const Divider(color: Colors.grey, height: 1),
          const SizedBox(height: 16),
          // Scrollable cards
          SizedBox(
            height: 180,
            child: PageView(
              controller: PageController(viewportFraction: 0.8),
              children: [
                _buildLoyaltyCard(
                  "Loyalty program coming soon for the merchants",
                  "https://via.placeholder.com/150/6c5ce7",
                  Colors.indigo,
                ),
                _buildLoyaltyCard(
                  "Loyalty program coming soon for the merchants",
                  "https://via.placeholder.com/150/00b894",
                  Colors.teal,
                ),
                _buildLoyaltyCard(
                  "Loyalty program coming soon for the merchants",
                  "https://via.placeholder.com/150/d63031",
                  Colors.deepOrange,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.blue : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoyaltyCard(String title, String imageUrl, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "Coming Soon",
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
