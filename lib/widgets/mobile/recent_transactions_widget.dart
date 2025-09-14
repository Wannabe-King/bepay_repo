import 'package:flutter/material.dart';

class TransactionItem {
  final String name;
  final String abbreviation;
  final String amount;
  final String value;
  final String profit;
  final String percentChange;
  final String img;
  final bool isPositiveChange;

  TransactionItem({
    required this.name,
    required this.abbreviation,
    required this.amount,
    required this.value,
    required this.profit,
    required this.percentChange,
    required this.img,
    this.isPositiveChange = true,
  });
}

class RecentTransactionsWidget extends StatelessWidget {
  final List<TransactionItem> transactions = [
    TransactionItem(
      name: 'Bitcoin',
      abbreviation: 'BTC',
      amount: '0',
      value: '\$43,870',
      profit: '+1.09%',
      percentChange: '+0.06',
      img: 'assets/btc.png',
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'TRON',
      abbreviation: 'TRON',
      amount: '0.25',
      value: '\$28.62',
      profit: '+1.09%',
      percentChange: '+0.08%',
      img: 'assets/tron.png',
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'Tether USD',
      abbreviation: 'USDT',
      amount: '0',
      value: '\$1.0094',
      profit: '+1.09%',
      percentChange: '+0.03%',
      img: 'assets/usdt.png',
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'Ethereum',
      abbreviation: 'ETH',
      amount: '0',
      value: '\$2,567',
      profit: '-3.09%',
      percentChange: '-0.08%',
      img: 'assets/eth.png',
      isPositiveChange: false,
    ),
    TransactionItem(
      name: 'Toncoin',
      abbreviation: 'TON',
      amount: '0.25',
      value: '\$7.86',
      profit: '+1.09%',
      percentChange: '+0.01%',
      img: 'assets/ton.png',
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'XRP',
      abbreviation: 'XRP',
      amount: '0.25',
      value: '\$0.53',
      profit: '+1.09%',
      percentChange: '+0.09%',
      img: 'assets/xrp.png',
      isPositiveChange: true,
    ),
  ];

  RecentTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
            ],
          ),

          // Transaction list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  border: (index < transactions.length - 1)
                      ? Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade800,
                            width: 0.5,
                          ),
                        )
                      : null,
                ),
                child: Row(
                  children: [
                    // Crypto icon
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(transaction.img),
                    ),
                    const SizedBox(width: 12),

                    // Name and value
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.abbreviation,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                transaction.value,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                transaction.profit,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: transaction.percentChange == '0'
                                      ? Colors.grey
                                      : transaction.isPositiveChange
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Amount and percent change
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transaction.amount,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          transaction.percentChange,
                          style: TextStyle(
                            fontSize: 14,
                            color: transaction.percentChange == '0'
                                ? Colors.grey
                                : transaction.isPositiveChange
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
