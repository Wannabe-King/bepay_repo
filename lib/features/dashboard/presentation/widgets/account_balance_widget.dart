import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class AccountBalanceWidget extends StatelessWidget {
  const AccountBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: Decorations.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Balance", style: TextStyles.heading3),
          const SizedBox(height: Spacing.md),

          // Balance Amount
          Row(
            children: [
              const Text("\$24,679.35", style: TextStyles.heading1),
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

          // Transaction List
          const Text("Recent Transactions", style: TextStyles.heading3),
          const SizedBox(height: Spacing.sm),

          // Transaction Items
          _TransactionItem(
            title: "Payment from John",
            date: "Today, 11:30 AM",
            amount: "+\$850.00",
            isIncoming: true,
          ),
          const Divider(),
          _TransactionItem(
            title: "Shopify Store",
            date: "Yesterday, 2:20 PM",
            amount: "-\$299.00",
            isIncoming: false,
          ),
          const Divider(),
          _TransactionItem(
            title: "Netflix Subscription",
            date: "25 Jul, 10:00 AM",
            amount: "-\$12.99",
            isIncoming: false,
          ),

          // View All Button
          const SizedBox(height: Spacing.md),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "View All Transactions",
                style: TextStyles.button.copyWith(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionItem extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final bool isIncoming;

  const _TransactionItem({
    Key? key,
    required this.title,
    required this.date,
    required this.amount,
    required this.isIncoming,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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
                  date,
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
