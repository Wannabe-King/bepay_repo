import 'package:flutter/material.dart';

class SidebarNavigationWeb extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const SidebarNavigationWeb({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 24),
          // Logo
          Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(Icons.dashboard, color: Colors.white, size: 32),
          ),
          const SizedBox(height: 40),
          // Navigation Items
          _buildNavItem(
            0,
            Icons.home_outlined,
            'Home',
            isSelected: selectedIndex == 0,
          ),
          _buildNavItem(
            1,
            Icons.account_balance_wallet_outlined,
            'Wallet',
            isSelected: selectedIndex == 1,
          ),
          _buildNavItem(
            2,
            Icons.analytics_outlined,
            'Analytics',
            isSelected: selectedIndex == 2,
          ),
          _buildNavItem(
            3,
            Icons.person_outline,
            'Profile',
            isSelected: selectedIndex == 3,
          ),
          _buildNavItem(
            4,
            Icons.settings_outlined,
            'Settings',
            isSelected: selectedIndex == 4,
          ),
          const Spacer(),
          // User profile at bottom
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/women/17.jpg',
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    int index,
    IconData icon,
    String tooltip, {
    bool isSelected = false,
  }) {
    return InkWell(
      onTap: () => onItemSelected(index),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: isSelected
              ? const Border(left: BorderSide(color: Colors.white, width: 3))
              : null,
        ),
        child: Tooltip(
          message: tooltip,
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.grey,
            size: 24,
          ),
        ),
      ),
    );
  }
}
