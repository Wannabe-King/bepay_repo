import 'package:flutter/material.dart';
import '../../core/utils/responsive_layout.dart';
import 'presentation/mobile/mobile_dashboard_content.dart';
import 'presentation/web/dashboard_content_web.dart';
import 'presentation/web/sidebar_navigation_web.dart';

class ResponsiveDashboard extends StatefulWidget {
  const ResponsiveDashboard({Key? key}) : super(key: key);

  @override
  State<ResponsiveDashboard> createState() => _ResponsiveDashboardState();
}

class _ResponsiveDashboardState extends State<ResponsiveDashboard> {
  int _selectedIndex = 0;

  void _handleNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        // Mobile layout
        mobile: MobileDashboardContent(),

        // Web layout with sidebar
        desktop: Row(
          children: [
            // Sidebar navigation (web only)
            Expanded(
              flex: 1,
              child: SidebarNavigationWeb(
                selectedIndex: _selectedIndex,
                onItemSelected: _handleNavigation,
              ),
            ),

            // Main content area
            const Expanded(flex: 5, child: DashboardContentWeb()),
          ],
        ),
      ),

      // Bottom navigation for mobile only
      bottomNavigationBar: ResponsiveLayout.isMobile(context)
          ? BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card),
                  label: 'Cards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.swap_horiz),
                  label: 'Transactions',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _handleNavigation,
            )
          : null,
    );
  }
}
