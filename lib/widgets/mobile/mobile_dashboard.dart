import 'package:flutter/material.dart';
import 'mobile_header.dart';
import 'mobile_action_buttons.dart';
import 'mobile_bepay_card.dart';
import 'recent_transactions_widget.dart';
import 'mobile_loyalty_cards.dart';
import 'mobile_chart.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          // Sandbox toggle switch
          Row(
            children: [
              const Text(
                "Sandbox",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Transform.scale(
                scale: 0.8,
                child: Switch(
                  value: false,
                  onChanged: (_) {},
                  activeColor: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with wallet balance
            const MobileHeader(),

            // Action buttons
            const MobileActionButtons(),

            // BePay Card
            const MobileBepayCard(),

            const SizedBox(height: 16),

            // Recent Transactions
            RecentTransactionsWidget(),

            const SizedBox(height: 16),

            // Loyalty Cards
            const MobileLoyaltyCards(),

            const SizedBox(height: 16),

            // Monthly Chart
            const MobileChart(),

            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            activeIcon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
