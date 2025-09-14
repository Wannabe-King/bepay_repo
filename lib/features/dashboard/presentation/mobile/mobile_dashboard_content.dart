import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MobileDashboardContent extends StatelessWidget {
  const MobileDashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const MobileHeader(),

            // Mobile Action Buttons
            const MobileActionButtons(),

            // BePay Card
            Padding(
              padding: const EdgeInsets.all(Spacing.md),
              child: Container(
                decoration: Decorations.card,
                padding: const EdgeInsets.all(Spacing.sm),
                child: const MobileBepayCard(),
              ),
            ),

            // Balance and Graph Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: Container(
                decoration: Decorations.card,
                padding: const EdgeInsets.all(Spacing.md),
                child: const MobileAccountInfo(),
              ),
            ),

            // Transactions Section
            const SizedBox(height: Spacing.md),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
              child: Text("Recent Transactions", style: TextStyles.heading3),
            ),
            const SizedBox(height: Spacing.sm),

            // Transactions List
            const MobileTransactionsList(),

            const SizedBox(height: Spacing.lg),
          ],
        ),
      ),
    );
  }
}

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.lg,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, John!", style: TextStyles.heading2),
              const SizedBox(height: 4),
              Text(
                "Welcome back",
                style: TextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary.withOpacity(0.1),
            child: Text(
              "JD",
              style: TextStyles.subtitle1.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileActionButtons extends StatelessWidget {
  const MobileActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionButton(
            icon: Icons.qr_code_scanner,
            label: "Scan",
            color: AppColors.primary,
          ),
          _buildActionButton(
            icon: Icons.send,
            label: "Send",
            color: AppColors.info,
          ),
          _buildActionButton(
            icon: Icons.account_balance_wallet,
            label: "Receive",
            color: AppColors.success,
          ),
          _buildActionButton(
            icon: Icons.history,
            label: "History",
            color: AppColors.warning,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyles.caption),
      ],
    );
  }
}

class MobileBepayCard extends StatelessWidget {
  const MobileBepayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF242E60), Color(0xFF1F2D78)],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BePay Account",
                style: TextStyles.heading3.copyWith(color: Colors.white),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.credit_card,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.md),
          Text(
            "•••• •••• •••• 4242",
            style: TextStyles.heading2.copyWith(
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD HOLDER",
                    style: TextStyles.caption.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "John Doe",
                    style: TextStyles.subtitle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXPIRES",
                    style: TextStyles.caption.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "12/25",
                    style: TextStyles.subtitle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Image.network(
                "https://via.placeholder.com/40/ffffff",
                height: 40,
                width: 40,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileAccountInfo extends StatelessWidget {
  const MobileAccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total Balance",
          style: TextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        const SizedBox(height: Spacing.xs),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("\$24,679.35", style: TextStyles.heading1),
            const SizedBox(width: Spacing.sm),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    color: AppColors.success,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "2.5%",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: Spacing.md),
        Container(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildChartBar("M", 0.3, false),
              _buildChartBar("T", 0.5, false),
              _buildChartBar("W", 0.7, true),
              _buildChartBar("T", 0.4, false),
              _buildChartBar("F", 0.6, false),
              _buildChartBar("S", 0.2, false),
              _buildChartBar("S", 0.3, false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChartBar(String day, double height, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 80 * height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: isSelected
                ? AppColors.primary
                : AppColors.primary.withOpacity(0.2),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          day,
          style: TextStyles.caption.copyWith(
            color: isSelected ? AppColors.primary : AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class MobileTransactionsList extends StatelessWidget {
  const MobileTransactionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      child: Column(
        children: [
          _buildTransactionItem(
            title: "Payment from John",
            subtitle: "Today, 11:30 AM",
            amount: "+\$850.00",
            isIncoming: true,
          ),
          const Divider(color: AppColors.divider, height: 1),
          _buildTransactionItem(
            title: "Shopify Store",
            subtitle: "Yesterday, 2:20 PM",
            amount: "-\$299.00",
            isIncoming: false,
          ),
          const Divider(color: AppColors.divider, height: 1),
          _buildTransactionItem(
            title: "Netflix Subscription",
            subtitle: "25 Jul, 10:00 AM",
            amount: "-\$12.99",
            isIncoming: false,
          ),
          const Divider(color: AppColors.divider, height: 1),
          _buildTransactionItem(
            title: "Salary",
            subtitle: "23 Jul, 9:00 AM",
            amount: "+\$4,200.00",
            isIncoming: true,
          ),
          const SizedBox(height: Spacing.md),
          TextButton(
            onPressed: () {},
            child: Text("View All Transactions", style: TextStyles.button),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required String title,
    required String subtitle,
    required String amount,
    required bool isIncoming,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Spacing.md),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: (isIncoming ? AppColors.success : AppColors.error)
                  .withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              isIncoming ? Icons.arrow_downward : Icons.arrow_upward,
              color: isIncoming ? AppColors.success : AppColors.error,
              size: 20,
            ),
          ),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.subtitle2),
                Text(
                  subtitle,
                  style: TextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyles.subtitle1.copyWith(
              color: isIncoming ? AppColors.success : AppColors.error,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
