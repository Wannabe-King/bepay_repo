import 'package:flutter/material.dart';
import 'mobile_header.dart';
import 'mobile_action_buttons.dart';
import 'mobile_bepay_card.dart';
import 'recent_transactions_widget.dart';
import 'mobile_loyalty_cards.dart';
import 'mobile_chart.dart';
import 'sliding_nav_bar.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({Key? key}) : super(key: key);

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: const SlidingNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
            child: Image.asset('assets/menu.png', scale: 1.2),
          ),
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
                child: Image.asset('assets/sandbox.png'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
            child: Image.asset('assets/notification.png'),
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
    );
  }
}
