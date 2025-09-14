import 'package:flutter/material.dart';
import 'widgets/web/sidebar_navigation_web.dart';
import 'widgets/web/dashboard_content.dart';
import 'widgets/mobile/mobile_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BePay Dashboard',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple,
      //     brightness: Brightness.light,
      //   ),
      //   fontFamily: 'Inter',
      // ),
      // darkTheme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.deepPurple,
      //     brightness: Brightness.dark,
      //   ),
      //   scaffoldBackgroundColor: Colors.black,
      //   fontFamily: 'Inter',
      // ),
      // themeMode: ThemeMode.dark,
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 600) {
          // Web layout
          return Scaffold(
            backgroundColor: Colors.white,
            body: Row(
              children: [
                // Left sidebar
                SidebarNavigationWeb(
                  selectedIndex: _selectedIndex,
                  onItemSelected: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),

                // Main content
                Expanded(child: DashboardContent()),
              ],
            ),
          );
        } else {
          // Mobile layout
          return const MobileDashboard();
        }
      },
    );
  }
}
